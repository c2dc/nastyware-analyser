/*  csv-format.c - Check and format a CSV file.
 
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

#define PROGRAM "csv-format"
#define VERSION "0.1.0"

char usage[] =
  "\n\n"
  "Usage : " PROGRAM " [options] <file-name>\n\n"
  "            Options \n\n"
  "            -h              this help message\n"
  "            -v              show program version\n"
  "            -s <number>     skip heading lines\n"
  "            -d <delimiter>  input  column delimiter\n"
  "            -D <delimiter>  output column delimiter\n"
  "            -t              trim skipped lines\n"
  "\n\n"
  ;

#define DFL_INPUT_DELIMITER  DFL_DELIMITER
#define DFL_OUTPUT_DELIMITER DFL_DELIMITER

int main (int argc, char **argv)
{
  int opt, rs;		/* Auxiliary variables. */
  unsigned int hlines=0;
  long int nlines;
  long int length;
  long int ncols;
  /* unsigned int *index; */
  FILE *fpin, *fpout=stdout;
  char idelimiter = DFL_INPUT_DELIMITER;
  char odelimiter = DFL_OUTPUT_DELIMITER;
  int trim=0;			/* Wheter or not trim skipped lines. */
  
    while ((opt = getopt(argc, argv, "hvs:d:D:t")) != -1)
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
	case 'd':
	  idelimiter = optarg[0];
	  break;
	case 'D':
	  odelimiter = optarg[0];
	  break;
	case 't':
	  trim = 1;
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

    if (argc == (optind+2))
      {
	fpout = fopen (argv[optind+1],"w");
	sysfatal (!fpout);
      }

    fpin = fopen (argv[optind],"r");
    sysfatal (!fpin);

    /* Get nunber of lines and maximum line length. */

    rs = count_lines (fpin, &nlines, &length, 0);
    assert (rs == nlines);

    /* Get index of lines. 

    index = malloc (nlines * sizeof(unsigned int));
    sysfatal (!index);

    count = index_lines (fpin, index);
    assert (count == nlines);
    */
    
    /* Count collumns. */
    
    ncols = count_columns (fpin, hlines, idelimiter);
    if (ncols < 0)
      {
	fprintf (stderr, "Line %ld, has a different number of columns.\n", -ncols);
	exit (EXIT_FAILURE);
      }
    fatal (ncols < 1, "No columns left in file.");

    fprintf (stderr, "File has %ld lines (leading %d skipped), %ld %s-separated columns\n", nlines, hlines, ncols, ascii_symbol[(int) idelimiter][1]);

    format_file (fpin, fpout, nlines, hlines, idelimiter, odelimiter, trim);	

    return EXIT_SUCCESS;
}

