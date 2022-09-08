/*  line_shuffle.c - Shuffle lines of a text file.
 
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
   consisting of unique permutations of the lines of the input file. */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <stdarg.h>
#include <assert.h>
#include <stdint.h>

#include "dftool.h"
#include "debug.h"

#define PROGRAM "lineshuffle"
#define VERSION "0.1.0"

/* Default and maximum number of permutations. 

   Notice that if the file has 'n' lines, the number 'p' of possible 
   permutations is p = n!, which increases really rapidly, e.g.
   

   1    line,      1  permutation  (the very file).
   2    lines,     2  permutations 
   3    lines,     6  permutations 
   4    lines,    24  permutations 
   5    lines,   120  permutations (practical number)
   6    lines,   720  permutations
   7    lines,  5040  permutations 
   8    lines 40,320  permutations (unlikely practical)

   15   lines 10^12   permutations (definitley unfeasible)
*/


#define MAX_PERMUTE 120	          /* Warn if above. */
#define MAX_PERMUTE_HARD 5040	  /* Hard limit (6 lines). */

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
  char force=0;			/* Force large number or permutations. */
  int allow_blank=0;		/* Allow blank lines in input file. */

  unsigned int pcount=0;	/* How many permutations we effectively got. */
  char pfile[PFILE_LENGTH];	/* Buffer for output file name. */

  long int *chosen = NULL;	/* Index of selected permutations. */
  unsigned int ri;		/* Randon index. */
  unsigned int rseed=0;			/* Randon seed. */
  int bad=0;

  
  /* Process command-line options. */
  
  while ((opt = getopt(argc, argv, "hvs:fn:p:s:dyo:r:d:")) != -1)
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
	case 'f':
	  force = 1;
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
  
  /* if (argc > (optind+1)) */
  /*     prefix = argv[optind+1]; */
  
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


  /* Compute the number of effective (possible) permutations with elines.
     Problem: if elines > 36, factorial blows up and eperm becomes zero.
     As a dirty provisional workaround, limit eperm. This is not good and should
     be fixed somehow (find another way to implement nperm which does not
     inolve computing factorials).
     

  
  if (elines > 30)
    elines = 30;
  */
  
  eperm = fact (elines);	/* Number of possible permutations. */
  
  if (nperm == 0)		/* If not specified in the command line, */
    nperm = eperm;		/* request all permutations. */


  /* Check limits. */
  
  if (  ((nperm > MAX_PERMUTE) && (force == 0)) || (nperm > MAX_PERMUTE_HARD))
    {
      
      fprintf (stderr,
	       "Maximum number or permutations %u.\n"
	       "User option -f to force a higher value up to %u\n",
	       MAX_PERMUTE, MAX_PERMUTE_HARD);
      exit (EXIT_FAILURE);
    }

  rlines = ufact (nperm);	/* Necessary number of lines. */
  rlines = nperm > fact (elines) ? rlines+1 : rlines;

  
  if (rlines > nlines)
    {
      fprintf (stderr, "For %lu permutations, at least %ld lines are required; file has %ld.\n", nperm, rlines, elines);
      exit (EXIT_FAILURE);
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
  
  if (DO_RANDOM)
    {
      chosen = malloc (nperm * sizeof (long int));
      sysfatal (!chosen);
      for (i=0; i<nperm; i++) chosen[i] = -1;
    }
  
  fprintf (stderr, "Requested %lu of %lu possible permutations using %ld of %ld lines (%s).\n\n", nperm, eperm, elines, nlines, DO_RANDOM ? "random" : "all");

  srand (rseed);
  
	      /* printf (">>> Here\n"); */

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
		      ri = rand() % (eperm + 1 - 0  ) + 0;
		  
		      j = 0;
		      while ( (j<nperm) && (chosen[j] != ri)) j++;
		      /* printf ("ri=%u, chosen[%u]=%ld\n", ri, j, chosen[j]); */

		      if (j==eperm)
			fprintf (stderr, "Repeated\n");
		    }
		  while (j==eperm);
		  chosen[j] = ri;      
		}
	      else
		{
		  ri = i;
		}
	      /* Generate the ri-th permutation index. */

	      
	      /* npermute (pindex, nlines, hlines, elines, ri); */
	      npermute (pindex, nlines, ri);
	      
	      /* Discard permutations with the skipped lines. */

	      /* for (j=0; j<nlines; j++) */
	      /* 	printf ("%d ", pindex[j]); */
	      /* printf ("\n"); */
	      
	      bad=0;
	      for (j=0; j<hlines; j++)
		if (pindex[i] != i)
		  {
		    /* printf ("*** Bad\n"); */
		    bad=1;
		  }
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

      fprintf (stderr, "\n");
      fprintf (stderr, "Done: %u permutations generated.\n", pcount);
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





