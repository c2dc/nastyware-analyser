/* csv-colfiles.c - Utility to extract CSV colums into files. 
 
   Copyright (c) 2021, Monaco F. J. <monaco@usp.br>

   This file is part of DFTools.

   DFTools is free software: you can redistribute it and/or modify
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


/* This program reads a data file in CSV format and creates one file for each
   column in the input file. The name of each file is the column title.
   Each output file is comma-separate list of the values present in the
   respective column.

   Output files are created in a subdirectory named after the input file
   by adding the postfix '-dir', and are named like the the respective
   collum labels given in the first line of the file.

*/

#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <errno.h>

#include "debug.h"

/* #define PROGRAM "col2files" */
#define USAGE "Usage:   " PROGRAM " [options] <filename>\n"

#define DELIMITER ';'

int main (int argc, char **argv)
{
  char *input_file_name, *output_dir_name;
  FILE *fpin, *fpout;
  int i, j, row_count, row_max, row_min, rs, dir_name_length;
  char *line=NULL, *header=NULL, *buffer, **column;
  size_t length;
  int n_cols;
  long int table_start;
  /* char *backup; */
  unsigned int opt;
  long int hlines=0;

#define PROGRAM "csv-colfiles"
#define VERSION "0.1.0"

char usage[] =
  PROGRAM " " VERSION
  "\n\n"
  "Usage : " PROGRAM " [options] <file-name> \n\n"
  "            Options \n\n"
  "            -h             this help message\n"
  "            -v             show program version\n"
  "            -s <number>    skip heading lines\n"
  "\n\n"
  ;


  while ((opt = getopt(argc, argv, "hvs:")) != -1)
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
	default:
	  fprintf (stderr, "%s", usage);
	  exit (EXIT_FAILURE);
	  break;
	}
    }

 
  if (argc==optind)
    {
      printf (USAGE);
      exit(1);
    }
  
  /* Open input file. */
  
  input_file_name = argv[optind];

  fpin = fopen (input_file_name, "r");
  sysfatal (!fpin);

  /* Skip heading lines. */
  {
    int i, nchars;
    size_t size;
    char *buffer=NULL;
    i=0;
    errno = 0;
    while ( (i<hlines) && ((nchars = getline (&buffer, &size, fpin)) != -1))
      i++;
    sysfatal (errno);
  }
  
  header = NULL;
  length=0;
  rs = getline (&header, &length, fpin);
  sysfatal (rs<0);

  /* Get number of columns. */

 
  n_cols = 1;
  buffer = header;
  while ( (buffer = strchr (buffer, DELIMITER)) )
    {
      buffer++;
      n_cols++;
    }
  
  /* Get column names. */

  column = malloc ((n_cols+1) * sizeof(char*));
  sysfatal (!column);

  i = 0;
  while ( (column[i] = strtok (i == 0 ? header : NULL, ";\n\r") ))
    {
      /* fprintf (stderr, "    got column[%d]: %s\n", i, column[i]); */
      i++;
    }

  /* Create column-files. */

  printf ("File %s has %d columns\n", input_file_name, n_cols);

  dir_name_length = strlen(input_file_name)+5;
			   
  output_dir_name = malloc (dir_name_length * sizeof(char));
  sysfatal (!output_dir_name);
  sprintf (output_dir_name, "cols-%s", input_file_name);

  printf ("Will create directory %s...", output_dir_name);

  /* backup = strdup (output_dir_name); */
  
  /* Currently, we can't overwrite output directory. */
  
  rs = mkdir (output_dir_name, 0775);
  if ( (rs<0)  && (errno == EEXIST))
      printf (" warning: directory exists.\n");
  else
    {
      sysfatal (rs<0);
      printf (" ok.\n");
    }



  /* Get first line position. */
      
  rs = table_start = ftell (fpin);
  sysfatal (rs<0);

  /* Do it. */
  
  row_max = 0; /* Placate -Wmaybe-uninitialized. */
  row_min = 0;
  
  for (i=0; i<n_cols; i++)
    {
      printf ("Get column %-15s ", column[i]);
      
      /* Create column-file. */

      //printf (">> cd to (%s) %s\n", output_dir_name, backup);
      
      rs = chdir (output_dir_name);
      sysfatal (rs<0);
      
      fpout = fopen (column[i], "w");
      sysfatal (!fpout);

      /* Read i-th column */

      row_count=0;
      while ((rs = getline (&line, &length, fpin))>0)
	{
	  for (j=0; j<=i; j++)
	    buffer = strtok (j==0 ? line : NULL, ";\n\r");
	  fprintf (fpout, "%c%s ", row_count!=0?';':'\0', buffer);
	  row_count++;
	}
      fputc ('\n', fpout);

      printf ("%d lines\n", row_count);

      if (i==0)
	{
	  row_max = row_count;
	  row_min = row_count;
	}
      else
	{
	  row_max = row_count > row_max ? row_count : row_max;
	  row_min = row_count < row_min ? row_count : row_min;
	}
      
      /* Rewind table. */
      
      rs = fseek (fpin, table_start, SEEK_SET);
      sysfatal (rs<0);
      
      rs = chdir ("..");
      sysfatal (rs<0); 
      
      /* Close column-file. */
      
      fclose (fpout);

      
    }

  fclose (fpin);
  
  if (row_max == row_min)
    printf ("All columns have %d rows.\n", row_max);
  else
    printf ("Between %d and %d rows per collum.\n", row_min, row_max);

  
  return EXIT_SUCCESS;
}
