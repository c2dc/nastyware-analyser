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



#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <assert.h>
#include "dftool.h"
#include "debug.h"

#define PROGRAM "csv-sort.c"
#define VERSION "0.1.0"

char usage[] =
  PROGRAM " " VERSION
  "\n\n"
  "Usage : " PROGRAM " [options] <file-name> <column>\n\n"
  "            Options \n\n"
  "            -h              this help message\n"
  "            -v              show program version\n"
  "            -d <delimiter>  delimiter\n"
  "            -s <number>     skip heading lines\n"
  "            -i              inverse (descending) order\n"
  "            -z <char>       decimal separator\n"
  "\n\n"
  ;

int main (int argc, char **argv)
{
  int i, j, opt, rs;		/* Auxiliary variables. */
  unsigned int count;
  FILE *fpin, *fpout=stdout;
  long int nlines;		/* Number of lines. */
  long int hlines=0;	/* Number of headling lines.*/
  long int elines;		/* Effective lines (excluding headings).*/
  long int length;		/* Maximum line length. */
  long int ncols;		/* Number of columns. */
  int allow_blank = 0;
  unsigned int *index;		/* Index of lines. */
  char **column;		/* Values in the column. */
  long int ocol=0;		/* Column to sort on. */
  int order = 1;		/* Ascending (1) or descanding (-1). */
  char delimiter=DFL_DELIMITER; /* Default delimiter. */
  char decsep = DFL_DECIMAL_SEPARATOR;
  
  while ((opt = getopt(argc, argv, "hvs:bid:z:")) != -1)
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
	case 'b':
	  allow_blank=1;
	  break;
	case 'i':
	  order = -1;
	  break;
	case 'd':
	  delimiter = optarg[0];
	  break;
	case 'z':
	  decsep = optarg[0];
	  break;
	default:
	  fprintf (stderr, "%s", usage);
	  exit (EXIT_FAILURE);
	  break;
	}
    }

  if (argc < (optind+1))
    {
      printf("%s", usage);
      exit (EXIT_FAILURE);
    }
  
  fpin = fopen (argv[optind],"r");
  sysfatal (!fpin);
  
  if (argc > (optind+1))
    ocol = atoi (argv[optind+1]);

  if (argc > (optind+2))
    {
      fpout = fopen (argv[optind+2], "w");
      sysfatal (!fpout);
    }
    
	       	       
  /* nlines = count_lines (fpin, allow_blank); */
  count_lines (fpin, &nlines, &length, allow_blank);
  
  /* Allocate an array for the index. */
  
  index = malloc (nlines * sizeof(unsigned int));
  sysfatal (!index);

  /* Index the array. */

  count = index_lines (fpin, index);
  assert (count == nlines);


  /* Effective lines (excluding heading lines). */
  
  elines = nlines - hlines;	

  /* Count number of colums. */

  ncols = count_columns (fpin, hlines, delimiter);
  if (ncols < 0)
    {
      fprintf (stderr, "Line %ld, has a different number of columns.\n", -ncols);
      exit (EXIT_FAILURE);
    }
  fatal (ncols < 1, "No columns left in file.");

  /* printf ("Ended with ncols = %ld\n", ncols); */
  
  
  if (ocol >= ncols)
    {
      fprintf (stderr, "No colum %ld in line %ld\n", ocol, hlines);
      exit (EXIT_FAILURE);
    }
	       
  /* fprintf (stderr, "Line %u has %u columns; select %u\n", hlines, ncols, ocol); */
  /* fprintf (stderr, "Sorting %u lines, skiping %u\n", elines, hlines); */

  fprintf (stderr, "Sorting %ld lines (leading %ld skipped) "
	   "of %ld-column %s-separated file "
	   "in %s order on column %ld\n",
	   elines, hlines, ncols, ascii_symbol[(int)delimiter][1],
	   order == 1? "ascending" : "descending" ,ocol);
  
  /* Read collum. */

  column = malloc (nlines * sizeof (char*));
  sysfatal (!column);


  /* printf ("Was:\n");  */
  /* for (i=0; i<nlines; i++) */
  /*   printf ("%d %d\n", i, index[i]); */

  rs = get_column (fpin, delimiter, hlines, ocol, column);
  assert (rs != nlines);

  /* printf ("Is:\n"); */
  /* for (i=0; i<nlines; i++) */
  /*   printf ("%d %d\n", i, index[i]);   */
  
  /* Sort. */

  
  for (i=hlines; i<nlines; i++)
    {
      for (j=i+1 ; j<nlines; j++)
	{
	  /* fprintf (stderr, "Compare (%s) (%s) %d / (%s,%s) \n ", column[i], column[j], */
	  /* 	   diffval (column[j], column[i]) <0, */
	  /* 	   str_is_number(column[i]) ? "" : "nan", */
	  /* 	   str_is_number(column[j]) ? "" : "nan" */
	  /* 	   ); */

	  /* if (column[j] < column[i]) */
	  if (  (order * diffval (column[j], column[i], decsep)) < 0 )
	    {
	      
	      /* fprintf (stderr, "swap!"); */
	      
	      /* swap (&index[i], &index[j]); */

	      {
		char *p;
		p = column[i];
		column[i] = column[j];
		column[j] = p;
	      }

	      {
	      	unsigned int aux;
	      	aux = index[i];
	      	index[i] = index[j];
	      	index[j] = aux;		
	      }

	      /* swap ((index+i), (index+j)); */
	      
	    }
	  /* fprintf (stderr, "\n"); */
	}

      /* printf ("Step %d: ", i); */
      /* for (j=hlines; j<nlines; j++) */
      /* 	printf ("%s ", column[j]); */
      /* printf ("\n"); */
    }
  
 /* printf ("Finally: \n"); */
 /*   for (i=0; i<nlines; i++) */
 /*    printf ("%d %d\n", i, index[i]); */

  output_file (fpin, fpout, index, nlines, 0);
  
  free (column);
  
  return EXIT_FAILURE;
}
