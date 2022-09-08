
#ifndef DFTOOL_H
#define DFTOOL_H

#define DFL_DELIMITER ';'
#define DFL_DECIMAL_SEPARATOR '.'

#include <stdio.h>

/* Rewind file to the first position. */

void rewind (FILE *fd);

/* Return 1 if buffer contains only blanks. */

int check_blank_line (const char* buffer);

/* Count the number of lines in file 'fd'.
   If allow_blank is zero, report error if a line consisting of only
   blank character is found. */

long int count_lines (FILE *fp, long int *lines, long int *length, int allow_blank);

/* Fill in vector 'index' with the offsets of the first characters in each line
   of file 'fd'. Return the number of newlines found.*/

unsigned int index_lines (FILE *fd, unsigned int *index);

/* Write file 'fpin' to file 'fpout' using the permutation vector 'index' 
   of length 'nlines'. The first 'hlines' lines are skipped. */

void output_file (FILE *fpin, FILE *fpout, unsigned int *index, long int nlines, long int hlines);

/* void permute_file (FILE *fpin, FILE *fpout, unsigned int *qindex, unsigned int *pindex, long int nlines, long int hlines); */
void permute_file (FILE *fpin, FILE *fpout, unsigned int *pindex, long int nlines, long int hlines);

/* Factorial. */

unsigned  int fact(unsigned int n);

/* 'Inverse' factorial of n, i.e. return x if x! = n; */

unsigned int ufact (unsigned int n);


/* Count number of columns in a CSV file. */

long int count_columns (FILE *fp, long int hlines, const char delimiters);

/* Get colum and return number of lines. */

int get_column (FILE *fp, char delimiter, long int lines,
		   int col, char **array);

/* Return the base-n value of the first non-blank token in str. */

long double strval (const char*, int nletters);

/* Return true if str is a number, considering decimal separator decsep. */

int str_is_number (const char *, char decsep);

float diffval (const char *str1, const char *str2, char decsep);

/* void npermute (unsigned int *index, long int nlines, long int hlines, const int n, int i); */
void npermute (unsigned int *index, const int n, int i);

/* An array with the name of the ASCII characters from 0 to 127.*/

extern const char *ascii_symbol[128][2];

/* Change delimiter. */

void format_file (FILE *fpin, FILE *fpout, long int nlines, long int hlines, char idelimiter, char odelimiter, int trim);

#define randrange(min, max)   (rand() % (max   + 1 - min) + min)

/* Fill in vector pindex[k]=k, and swap index i and j. */

void swaplines (unsigned int *pindex, long int nlines, unsigned int i, unsigned int j);


#endif
