/*  csv-lineswap.c - Shuffle lines of a text file.
 
    Copyright (c) 2021, Monaco F. J. <monaco@usp.br>

    This file is part of DFTool.

    DFTool is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
   
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
   
    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/


/* This program reads an input text file and produces n output files 
   consisting of unique permutations of the lines of the input file
   containing two lines swapped. */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <stdarg.h>
#include <assert.h>
#include <stdint.h>
#include <math.h>

#include "dftool.h"
#include "debug.h"

#define PROGRAM "csv-lineswap"
#define VERSION "0.1.0"

char usage[] =
  PROGRAM " " VERSION
  "\n\n"
  "Usage : " PROGRAM " [options] <file-name> \n\n"
  "            Options \n\n"
  "            -h             this help message\n"
  "            -v             show program version\n"
  "            -s <number>    skip heading lines\n"
  "            -p <number>    number of permutations\n"
  "            -n <number>    same as -p\n"
  "            -b             allow blank lines\n"
  "            -r             random seed (default 0)\n"
  "            -o <prefix>    output prefix (oterhwise, stdout)\n"
  "            -y             dry run (show info only)\n"
  "            -z             include no-permuted file in output\n"
  "\n\n"
  ;


#define PFILE_LENGTH 1024 	/* Maximun length of output file name. */

/* Main function. */

int main (int argc, char **argv)
{
  unsigned int                   /* Auxiliary variables. */
    i, j, opt, count, rs; 
  FILE
    *fpin,			 /* Input file. */
    *fpout;			 /* Output file. */
  unsigned int
    *index,			 /* Index with fffsets to file lines. */
    *pindex,			 /* Permuted index. */
    *qindex;			 /* Auliliary index. */
  char *prefix = NULL;		 /* Save files prefix-1, prefix-2 etc. */
  long int
    nlines,			 /* Number of lines in file. */
    elines,			 /* Effective lines (removing headings). */
    rlines,			 /* Required lines to make nperm permuations. */
    hlines=0;		         /* Number of heading lines in file. */

  long int length;		/* Maximum line length. */
  
  /* unsigned int */
  uint64_t
    nperm = 0,			/* Number of permutations requested. */
    eperm;			/* Number of permutations possible.  */
  int dryrun = 0;		/* Dry run. */
  int allow_blank=0;		/* Allow blank lines in input file. */

  unsigned int pcount=0;	/* How many permutations we effectively got. */
  char pfile[PFILE_LENGTH];	/* Buffer for output file name. */

  long int *chosen = NULL;	/* Index of selected permutations. */
  unsigned int ri;		/* Randon index. */
  unsigned int rseed=0;			/* Randon seed. */
  int bad=0;
  unsigned int s1=1, s2=0;		/* Index of two lines to be swapped. */
  int orig = 0;		/* Whether to include or not the original file. */
  int chosen_count=0;	/* Auxiliary counter to avoid duplicated selections. */
  int tries=0;		/* Auxiliary counter of number of selection tries. */
  
  /* Process command-line options. */
  
  while ((opt = getopt(argc, argv, "hvs:n:p:s:dyo:r:d:z")) != -1)
    {
      switch (opt)
	{
	case 'h':
	  printf("%s", usage);
	  exit (EXIT_SUCCESS);
	  break;
	case 'v':
	  printf(PROGRAM " " VERSION "\n");
	  exit (EXIT_SUCCESS);
	  break;
	case 's':
	  hlines = atoi (optarg);
	  break;
	case 'y':
	  dryrun = 1;
	  break;
	case 'n':
	case 'p':
	  nperm = atoi (optarg);
	  break;
	case 'b':
	  allow_blank=1;
	  break;
	case 'o':
	  prefix = strdup (optarg);
	  break;
	case 'r':
	  rseed = atoi (optarg);
	  break;
	case 'z':
	  orig = 1;
	  break;
	default:
	  fprintf (stderr, "%s", usage);
	  exit (EXIT_FAILURE);
	  break;
	}
    }

  
  /* Input file. */
  
  if (argc > (optind))
    {
      fpin = fopen (argv[optind],"r");
      sysfatal (!fpin);
    }
  else
    {
      printf("%s", usage);
      exit (EXIT_SUCCESS);
    }

  /* If prefix is given, output files are named prefix-1, prefix-2 etc. 
     If prefix is not given, permutations are written into the 
     standard output. */
  
  /* Count number of lines in input file. */

  rs  = count_lines (fpin, &nlines, &length, allow_blank);
  assert (rs == nlines);
  
  /* Allocate an array for the index. */
  
  index = malloc (nlines * sizeof(unsigned int));
  sysfatal (!index);

  
  /* Index the array. */

  count = index_lines (fpin, index);
  assert (nlines == count); 
     
  /* Compute number of permutations. */
  
  elines = nlines - hlines;	/* Effective lines (excluding heading lines). */
  
  /* eperm = fact (elines); */

  eperm = elines * (elines-1) / 2; /* Number of possible permutations. */

  
  if (nperm == 0)		/* If not specified in the command line, */
    nperm = eperm;		/* request all permutations. */


  /* Check limits. */
  
  /* if (  ((nperm > MAX_PERMUTE) && (force == 0)) || (nperm > MAX_PERMUTE_HARD)) */
  /*   { */
      
  /*     fprintf (stderr, */
  /* 	       "Maximum number or permutations %u.\n" */
  /* 	       "User option -f to force a higher value up to %u\n", */
  /* 	       MAX_PERMUTE, MAX_PERMUTE_HARD); */
  /*     exit (EXIT_FAILURE); */
  /*   } */

  /* rlines = ufact (nperm);	/\* Necessary number of lines. *\/ */
  /* rlines = nperm > fact (elines) ? rlines+1 : rlines; */

  rlines = (1 + sqrt (1+8*nlines))/2;
  

  /* printf ("elines %d, rlines %d\n", elines, rlines); */

  printf ("nperm %lu, eperm %lu\n", nperm, eperm);
  
  /* if (rlines > nlines) */
  if (nperm > eperm)
    {
      fprintf (stderr, "For %lu permutations, at least %ld lines are required; file has %ld.\n", nperm, rlines, elines);
      /* exit (EXIT_FAILURE); */
    }
  
  
  
  /* Generate permutations. */

  pindex = malloc (nlines * sizeof(unsigned int));
  sysfatal (!pindex);

  qindex = malloc (nlines * sizeof(unsigned int));
  sysfatal (!qindex);

  /* fprintf (stderr, "Requested %u of %u possible permutations using %ld of %ld lines.\n\n", nperm, eperm, elines, nlines); */
  
  /* We want to geneate nperm random permutations. If nrpem is equal to the number
     of possible permmutations (eperm), however, we can just go through all the
     possible permutations for some slightly optmized (?) performance gain. */
  
#define DO_RANDOM (eperm > nperm)
/* #define DO_RANDOM 1 */

  
  if (DO_RANDOM)
    {
      /* Chosen is a vector with all eperm positions zero-initialized. 
	 When a particular swap pair is chosen, its corresponding index in the
	 vector is set. The index of a swapping between lines a and b is a binary
	 number with all bits zero and bits a and b set: val = exp2(a)+exp2(b).
	 Because of this, most positions in the vector do not correspond to a
	 valid swapping. This is therefor not very memory efficient, but on the
	 othe hand, is quite time-efficient. It serves to our purpose for the 
	 time being. Perhaps we can eventually devise a more elegant solution. */
      chosen = malloc (eperm * sizeof (long int));
      sysfatal (!chosen);
      for (i=0; i<eperm; i++) chosen[i] = -1;
    }
  
  fprintf (stderr, "%s %lu of %lu 2-line permutations using %ld of %ld lines, %s.\n\n",
	   DO_RANDOM ? "Random" : "All", nperm, eperm, elines, nlines, orig ? "plus the original" : "" );

  srand (rseed);

  
	      /* printf (">>> Here\n"); */

  /* Whether permutation zero (no permutation) is included or not. */
  
  /* all = nperm; */
  /* if (orig) */
  /*   { */
  /*     s=0; */
  /*     all = nperm+1; */
  /*   } */
  
  if (!dryrun)			/* Dry run: do not generate permutations. */
    {

      for (i=0; i< nperm; i++)
	{

	  /* Whether we'll get random or or all permutations. */
	  
	  do
	    {
	      
	      if (DO_RANDOM)
		{
		  do
		    {
		      /*   rand() % (max   + 1 - min) + min;       */
		      /* ri = rand() % (eperm + 1 - 0  ) + 0; */

		      s1 = randrange (hlines+1, elines-1);
		      s2 = randrange (hlines, s1-1);
		      ri = exp2(s1) + exp2(s2);

		      tries++;
		      
		      j = 0;
		      while ( (j<eperm) && (chosen[j] != ri)) j++;


		      /* if (j<eperm) */
		      /* 	fprintf (stderr, "(%d) ri=%u REPEATED because chosen[%u]=%lu\n", i, ri, j, chosen[j]); */
		      /* else */
		      /* 	fprintf (stderr, "(%d) ri=%u selected\n", i, ri); */
		      
		    }
		  while (j<eperm);
		  chosen[chosen_count] = ri;
		  chosen_count++;
		}
	      else
		{
		  ri = i;
		  tries++;
		}

	      
	      /* Generate the ri-th permutation index. */

	      
	      /* npermute (pindex, nlines, hlines, elines, ri); */
	      /* npermute (pindex, nlines, ri); */

	      swaplines (pindex, nlines, s1, s2);

	      s2 = s2+1;
	      if (s2 >= s1)
		{
		  s1 = s1+1;
		  s2 = 0;
		}
	      
	      /* Discard permutations with the skipped lines. */

	      /* for (j=0; j<nlines; j++) */
	      /* 	printf ("%d ", pindex[j]); */
	      /* printf ("\n"); */
	      
	      /* bad=0; */
	      /* for (j=0; j<hlines; j++) */
	      /* 	if (pindex[i] != i) */
	      /* 	  { */
	      /* 	    /\* printf ("*** Bad\n"); *\/ */
	      /* 	    bad=1; */
	      /* 	  } */

	    }
	  while (bad);

	  for (j=0; j<nlines; j++)
	    qindex[j] = index[pindex[j]];
	  
	  ++pcount;

	  /* Stdout or output files. */
	  
	  if (!prefix)
	    {
	      permute_file (fpin, stdout, qindex, nlines, 0);
	      printf ("\n");
	    }
	  else
	    {
	      fprintf (stderr, ".");
	      sprintf (pfile, "%s-%d", prefix, pcount);
	      fpout = fopen (pfile, "w");
	      sysfatal (!fpout);
	      permute_file (fpin, fpout, qindex, nlines,0);
	      fclose (fpout);
	    }
	  /* output_file (fpin, stdout, qindex, nlines, 0); */
	}

      if (orig)
	{
	  if (!prefix)
	    {
	      permute_file (fpin, stdout, qindex, nlines, 0);
	      printf ("\n");
	    }
	  else
	    {
	      sprintf (pfile, "%s-%d", prefix, 0);
	      fpout = fopen (pfile, "w");
	      sysfatal (!fpout);
	      permute_file (fpin, fpout, qindex, nlines,0);
	      fclose (fpout);
	    }
	  pcount++;
	  
	}

      
      fprintf (stderr, "\n");
      fprintf (stderr, "Done: %u permutations generated (%d tries)\n", pcount, tries);
    }
  
  /* All done. */

  fclose (fpin);

  if (chosen)
    free (chosen);
  free (index);
  free (pindex);
  free (qindex);
  
  return EXIT_SUCCESS;
}





