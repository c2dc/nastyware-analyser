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

#define PROGRAM "csv-average"
#define VERSION "0.1.0"

char usage[] =
  PROGRAM " " VERSION
  "\n\n"
  "Usage : " PROGRAM " [options] <file-name> \n\n"
  "            Options \n\n"
  "            -h             this help message\n"
  "            -v             show program version\n"
  "            -s <number>    skip heading lines\n"
  "            -o <prefix>    output prefix (oterhwise, stdout)\n"
  "\n\n"
  ;

void read_matrix (FILE *fpin, float **matrix, long int ncols, long int nlines, long int hlines);
void show_matrix (float **, long int, long int);
void show_str_matrix (float **, long int, long int, char**str_matrix);

int main(int argc, char **argv)
{
  long int
    nlines,			 /* Number of lines in file. */
    elines,			 /* Effective lines (removing headings). */
    hlines=0;		         /* Number of heading lines in file. */
  int opt;
  char *prefix = NULL;		 /* Save files prefix-1, prefix-2 etc. */
  size_t i, j;
  FILE
    *fpin,			 /* Input file. */
    *fpout;			 /* Output file. */
  long int ncols, length;
  float **matrix;		/* Matrix with the averages. */
  char **str_matrix;		/* Converted to string. */
  
  while ((opt = getopt(argc, argv, "hvs:o")) != -1)
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
	case 'o':
	  prefix = strdup (optarg);
	  break;
	default:
	  fprintf (stderr, "%s", usage);
	  exit (EXIT_FAILURE);
	  break;
	}
    }

  
  /* Input files. */

  if (argc == optind)
    {
      fprintf (stderr, "%s", usage);
      exit (EXIT_FAILURE);
    }

  fpin = fopen (argv[optind],"r");
  sysfatal (!fpin);

      /* Get nlines e ncols. */

  count_lines (fpin, &nlines, &length, 0);
  ncols = count_columns (fpin, hlines, ';');
  /* fclose(fpin); */
  

  elines = nlines - hlines;

  fprintf (stderr, "Computing %ld of %ld lines of %ld-column matrix\n",
	   elines, nlines, ncols);


  /* Read column-label (first column). */

  str_matrix = (char **) malloc (elines * sizeof (char *));
  sysfatal (!str_matrix);
  
  get_column (fpin, ';', hlines, 0, str_matrix);
 
  fclose(fpin);
  
  /* Allocate matrix. */

  matrix = (float **) malloc(elines * sizeof(float*));
  sysfatal (!matrix);
  for (i=0; i<elines; i++)
    {
      matrix[i] = (float*) malloc (ncols * sizeof (float));
      sysfatal (!matrix[i]);
    }

  /* Initialize matrix. */
  for (i=0; i<elines;i++)
    for (j=0; j<ncols; j++)
      matrix[i][j]=0;

  /* Accumulate all matrixes. */
  for (i=optind; i<argc; i++)
    {
      fpin = fopen (argv[i],"r");
      sysfatal (!fpin);
      read_matrix (fpin, matrix, ncols, nlines, hlines);
    }
  /* Divide by the number of matrixes. */

  for (i=0; i<elines;i++)
    for (j=0; j<ncols; j++)
      matrix[i][j] = matrix[i][j]/(argc-optind);

  show_str_matrix (matrix, ncols, elines, str_matrix);

  return EXIT_SUCCESS;
}


void show_matrix (float **matrix, long int ncols, long int elines)
{
  int i, j;
  for (i=0; i<elines; i++)
    {
      for (j=0; j<ncols; j++)
	{
	  fprintf (stdout, "%f %c", matrix[i][j], j<(elines-1)?';':' ');
	}
      fprintf (stdout, "\n");
    }
}

void show_str_matrix (float **matrix, long int ncols, long int elines, char **str_matrix)
{
  int i, j;
  for (i=0; i<elines; i++)
    {
      fprintf (stdout, "%s %c", str_matrix[i], j<(elines-1)?';':' ');
      for (j=1; j<ncols; j++)
	{
	  fprintf (stdout, "%f %c", matrix[i][j], j<(elines-1)?';':' ');
	}
      fprintf (stdout, "\n");
    }
}

void read_matrix (FILE *fpin, float **matrix, long int ncols, long int nlines, long int hlines)
{
  int i, j;
  size_t nchars;
  char *buffer=NULL;
  size_t size=0;
  char *p;

  if (fpin!=stdin)
    rewind (fpin);  
  
  /* fprintf (stderr, "ncols %ld, nlines %ld, hlines %ld\n", ncols, nlines, hlines); */

  /* Skip heading lines. */
  
  i=0;
  errno = 0;
  while ( (i<hlines) && ((nchars = getline (&buffer, &size, fpin)) != -1))
    {
      i++;
    }
  sysfatal (errno);

  
  /* Read the remaining lines. */

  i=0;
  errno = 0;
  while ( (1) && ((nchars = getline (&buffer, &size, fpin)) != -1))
    {
      j=0;
      while ( (p=strtok (j==0?buffer:NULL,";")))
	{
	  /* fprintf (stderr, "%s -", p); */

	  
	  matrix[i][j] += atof (p);
	  j++;
	}
      /* fprintf (stderr, "\n"); */
            
      i++;
    }
  sysfatal (errno);
  
  free(buffer);
}
