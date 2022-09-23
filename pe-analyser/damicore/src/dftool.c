/*  dftool.c - Core DFTool functions.
 
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
#include <string.h>
#include <ctype.h>
#include "dftool.h"
#include "debug.h"

#ifndef PROGRAM
#define PROGRAM "Error"
#endif

/* Rewind file to the first position. */

void rewind (FILE *fd)
{
  int rs;
  rs = fseek (fd, 0, SEEK_SET);
  sysfatal ((rs<0) && (errno != ESPIPE));
}

/* Return 1 if buffer contains only blanks. */

int check_blank_line (const char* buffer)
{
  int i, c, is_blank=1;
  is_blank = 1;
      
  i=0;
  while ((c=buffer[i]) != '\0')	/* Todo: replace with isblank() ? */
    {
      switch (c)
	{
	case  ' ':
	case '\n':
	case '\t':
	  break;
	default:
	  is_blank = 0;
	  break;
	}
      i++;
    }
  return is_blank;
}

/* Count the number of lines in file 'fp'.
   If allow_blank is zero, report error if a line consisting of only
   blank character is found. */

long int count_lines (FILE *fp, long int *lines, long int *length, int allow_blank)
{
  long int nlines = 0;
  size_t nchars, size = 0;
  size_t maxchars = 0;
  char *buffer = NULL;
  
  rewind (fp);
  
  errno = 0;
  while ( (nchars = getline (&buffer, &size, fp)) != -1)
    {
      
      if (nchars > maxchars)
	maxchars = nchars;
      
      if (!allow_blank)
	if (check_blank_line (buffer))
	  {
	    fprintf (stderr, "Line %ld is blank; please fix it or use option -b\n", nlines);
	    exit (EXIT_FAILURE);
	  }
      nlines++;
    }
  sysfatal (errno);
  
  
  free (buffer);

  *lines = nlines;
  *length = maxchars;
  
  return nlines;
  
}

/* Fill in vector 'index' with the offsets of the first characters in each line
   of file 'fp'. Return the number of newlines found.*/

unsigned int index_lines (FILE *fp, unsigned int *index)
{
  int i, c, last;
  unsigned int count = 0;

  rewind (fp);

  count = 0;
  i = 0;
  index[i] = count;
  
  c = 0;
  do
    {
      if ( c == '\n' )
  	{
	  i++;
  	  index[i] = count-0;
  	}
      count++;
      last = c;
    }
  while ( (c = fgetc(fp)) != EOF);

  if (last != '\n')
    i++;
  
  return i;
}


/* Write file 'fpin' to file 'fpout' using the permutation vector 'index' 
   of length 'nlines'. */

void output_file (FILE *fpin, FILE *fpout, unsigned int *index, long int nlines, long int hlines)
{
  int i, rs;
  char *buffer=NULL;
  size_t size;
  
  rewind (fpin);
  for (i=hlines; i<nlines; i++)
    {
      fseek (fpin, index[i], SEEK_SET);
      
      errno = 0;
      rs = getline (&buffer, &size, fpin);
      sysfatal ((rs<0) && (errno));

      /* We handle the case where the last line of the input file does
	 hot have a trailing newline character. */
      
      fprintf (fpout, "%s%s", buffer, buffer[rs-1] == '\n' ? "" : "\n");
      
      /* fprintf (fpout, "%d : %s|%s", i, buffer, buffer[rs-1] == '\n' ? "" : "\n"); */
    }
  free (buffer);
}

void permute_file    (FILE *fpin, FILE *fpout, unsigned int *qindex, long int nlines, long int hlines)
{
  int i, rs;
  char *buffer=NULL;
  size_t size;

  /* fprintf (stderr, "hlines=%ld\n", hlines); */
        
  rewind (fpin);
  for (i=hlines; i<nlines; i++)
    {
      fseek (fpin, qindex[i], SEEK_SET);
      
      errno = 0;
      rs = getline (&buffer, &size, fpin);
      sysfatal ((rs<0) && (errno));

      /* We handled the case where the last line of the input file does
	 hot have a trailing newline character. */

      fprintf (fpout, "%s%s", buffer, buffer[rs-1] == '\n' ? "" : "\n");
      
      /* fprintf (fpout, "%d : %s|%s", i, buffer, buffer[rs-1] == '\n' ? "" : "\n"); */
    }
  free (buffer);
}

/* Compute factorial of n. 
   Warning: result will be wrong for large n.
   Todo: improve this.
*/

unsigned  int fact(unsigned int n)
{
  unsigned int i;
  unsigned  f=1;

  for (i=1; i <= n; i++)
    f = f * i;
  return f;
}

/* 'Inverse' factorial of n, i.e. return x if x! = n; */

unsigned int ufact (unsigned int n)
{
  unsigned int g=1;

  do
    {
      g++;
      n = n/g;
    }
  while (n>1);
  
  return g;
}



/* Count number of columns in a CSV file. 

   If any colum 
*/

long int count_columns (FILE *fp, long int hlines, const char delimiter)
{
  int rs, i;
  char *buffer = NULL, *aux=NULL;
			
  size_t length = 0;
  long int ncols=0;
  long int other_ncols = 0;
  
  rewind (fp);

  /* Skip headings. */

  rs=0;
  for (i=0; i<=hlines; i++)
    {
      errno = 0;
      rs = getline (&buffer, &length, fp);
      if (!aux) aux = buffer;
      sysfatal (rs<0 && errno);
    }
  if (rs<0)
    return 0;
  
  /* Get number of columns. */
  
  ncols = 1;
  while ( (buffer = strchr (buffer, delimiter)) )
    {
      buffer++;
      ncols++;
    }

  /* Check the number of cols in remaining lines. */

  i = 1;
  errno = 0;
  while ( (rs = getline (&buffer, &length, fp)) > 0)
    {
      /* fprintf (stderr, "Read line %s", buffer); */
      other_ncols=1;
      while ( (buffer = strchr( buffer, delimiter)) != NULL)
	{
	  buffer++;
	  other_ncols++;
	  /* fprintf (stderr, "%s %d cols\n", buffer, other_ncols); */
	}
      /* fprintf (stderr, "Got %d cols\n", other_ncols); */
      if (other_ncols != ncols)
	return -i;      
      i++;
    }
  sysfatal (rs<0 && errno);
  
  free (aux);
  return ncols;
}


int get_column (FILE *fp, char delimiter, long int hlines,
		   int col, char **array)
{
  int rs;
  long int nchars, i;
  long int nlines=0;
  char *buffer=NULL, *aux=NULL;;
  size_t length=0;
  char delims[] = {delimiter, ' ','\n', '\0'}; 
  
  rewind (fp);

  /* Skip heading lines. */
  
  for (i=0; i<hlines; i++)
    {
      if (!aux) aux = buffer;      
      rs = getline (&buffer, &length, fp);
      sysfatal (rs<0);
      array[i]=NULL;
    }
  nlines = i;

  /* Get the remainging lines. */
  
  errno = 0;
  while ( (nchars = getline (&buffer, &length, fp)) != -1)
    {
      if (!aux) aux = buffer;      
      for (i=0; i<col; i++)
	{
	  /*
	  buffer = strchr (buffer, delimiter);
	  if (!buffer)
	    return -1;
	  buffer++;
	  */

	  while ( (*buffer != '\0') && (*buffer != delimiter))
	    buffer++;
	  if (*buffer == '\0')
	    return -1;
	  buffer++;
	  
	}
      /* sscanf (buffer, "%f", &array[nlines]); */
      
      strtok (buffer, delims);
      array[nlines] = strdup (buffer);
      
      /* printf ("[%s]\n", array[nlines]); */
      
      nlines++;

      buffer=NULL;
      length = 0;
      
    }
  sysfatal (errno);
  
  
  free (aux);
  
  return nlines-1;
}

/* Return 1 if str is a valid representation of a signaled real
   number; return 0 otherwise. */

#define SORT_UP 0
#define SORT_DOWN 1

int str_is_number (const char *str, char decsep)
{
  char *p = (char *) str;
  int sep=0;
  
  /* Skip leading blanks. */

  while ( (*p!='\0')  && isblank(*p)) p++;

  /* Skip leading signal. */
  
  /* while ( (*p!='\0') && ((*p == '+') || (*p == '-')) ) p++; */

  if ( (*p == '+') || (*p == '-')) p++;       
  
  /* while ((*p!='\0') && (isdigit(*p) || (*p=='.'))) p++; */
  while ((*p!='\0') && (isdigit(*p) || (*p==decsep)))
    {
      if (*p == decsep)
	if (sep++>0) return 0;
      p++;
    }
  return (*p == '\0');

  

}

/* Compare two strings and return its numeric difference defined as follow.

   a) Leading blanks are skipped.
   b) If the string is a valid representation of a signaled real number
      (i.e. it is composed of only digits, decimal separator and optionally a
      leading signal), it is considered a quantitative data.
   c) If the string does not qualify as a quantitative data, it is then 
      considered a categorical data.
   d) Two quantitative data items are compared numerically and their difference
      is the usual regular difference.
   e) Two categorical data items are compared lexicographically and their
      difference is the result of strcmp().
   f) If the first string denotes a quantitative data and the second denotes a 
      categorical data, their difference is 1. If the order is inverted, the
      difference is -1.

   This function may be useful to sort arrays containing both quantitative and
   categorical data.  In ascending order, numbers will have precedence over
   alphabetic labels.

 */

float diffval (const char *str1, const char *str2, char decsep)
{
  int str1_is_number;
  int str2_is_number;

  str1_is_number = str_is_number (str1, decsep);
  str2_is_number = str_is_number (str2, decsep);

  /* If both are numbers, compare the numeric values. */
  
  if ( str1_is_number && str2_is_number)
    {
      return atof(str1) - atof(str2);
    }

  /* If both are numbers, compare lexicographically. */
  
  if ( (!str1_is_number) && (!str2_is_number))
    {
      return strcmp (str1, str2);
    }

  /* If one is a number and the other is not, number comes first. */

  if ( str1_is_number )
    return -1;
  else
    return 1;
  
}

/* This function fills in the array index with the i-th permutation of numbers in (0, n-1). 
   The optimized algorithm works by associating an index i to each possible permutation
   and then calculating the permutation without generating all preceding permutations. */

/* void npermute (unsigned int *index, long int nlines, long int hlines, const int n, int i) */
void npermute (unsigned int *index, int n, int i)
{
   int j, k = 0;

   unsigned int *factorial;		/* Factorial index. */
   unsigned int *permut;		/* Permutation. */

   /* if (n>30) */
   /*   n = 30; */

   factorial = (unsigned int *) malloc(n * sizeof(int));
   permut = (unsigned int *) malloc(n * sizeof(int));

   /* Compute factorial numbers */
   factorial[k] = 1;
   while (++k < n)
      factorial[k] = factorial[k - 1] * k;

   /* Compute factorialorial code */
   for (k = 0; k < n; ++k)
   {
      permut[k] = i / factorial[n - 1 - k];
      i = i % factorial[n - 1 - k];
   }

   /* readjust values to obtain the permutation
      tart from the end and check if preceding values are lower */
   
   for (k = n - 1; k > 0; --k)
      for (j = k - 1; j >= 0; --j)
         if (permut[j] <= permut[k])
            permut[k]++;


   /* Fill in index array. */
   
   for (k = 0; k < n; ++k)
     index[k] = permut[k];

   free(factorial);
   free(permut);
}


/* const char *ascii_symbol[128] = */
/*   { */
/*     "NUL",    "DLE",    " ",    "0",    "@",    "P",    "`",    "p",  */
/*     "SOH",    "DC1",    "!",    "1",    "A",    "Q",    "a",    "q",  */
/*     "STX",    "DC2",    "\"",   "2",    "B",    "R",    "b",    "r",  */
/*     "ETX",    "DC3",    "#",    "3",    "C",    "S",    "c",    "s",  */
/*     "EOT",    "DC4",    "$",    "4",    "D",    "T",    "d",    "t",  */
/*     "ENQ",    "NAK",    "%",    "5",    "E",    "U",    "e",    "u",  */
/*     "ACK",    "SYN",    "&",    "6",    "F",    "V",    "f",    "v",  */
/*     "BEL",    "ETB",    "'",    "7",    "G",    "W",    "g",    "w",  */
/*     "BS",     "CAN",    "(",    "8",    "H",    "X",    "h",    "x",  */
/*     "HT",     "EM",     ")",    "9",    "I",    "Y",    "i",    "y",  */
/*     "LF",     "SUB",    "*",    ":",    "J",    "Z",    "j",    "z",  */
/*     "VT",     "ESC",    "+",    ";",    "K",    "[",    "k",    "{",  */
/*     "FF",     "FS",     ",",    "<",    "L",    "\\",   "l",    "|",  */
/*     "CR",     "GS",     "-",    "=",    "M",    "]",    "m",    "}",  */
/*     "SO",     "RS",     ".",    ">",    "N",    "^",    "n",    "~",  */
/*     "SI",     "US",     "/",    "?",    "O",    "_",    "o",    "DEL"  */
/*   }; */

#ifndef CHAR_P_ASCII_SYMBOL
#define CHAR_P_ASCII_SYMBOL
const char *ascii_symbol[128][2] =
  {
   {"NUL",   "NUL"},
   {"SOH",   "SOH"},
   {"STX",   "STX"},
   {"ETX",   "ETX"},
   {"EOT",   "EOT"},
   {"ENQ",   "ENQ"},
   {"ACK",   "ACK"},
   {"BEL",   "BEL"},
   {"BS",    "BS"}, 
   {"HT",    "tab"}, 
   {"LF",    "newline"}, 
   {"VT",    "VT"}, 
   {"FF",    "FF"}, 
   {"CR",    "return"}, 
   {"SO",    "SO"}, 
   {"SI",    "SI"}, 


   {"DLE",   "DLE"},
   {"DC1",   "DC1"},
   {"DC2",   "DC2"},
   {"DC3",   "DC3"},
   {"DC4",   "DC4"},
   {"NAK",   "NAK"},
   {"SYN",   "SYN"},
   {"ETB",   "ETB"},
   {"CAN",   "CAN"},
   {"EM",    "EM"}, 
   {"SUB",   "SUB"},
   {"ESC",   "ESC"},
   {"FS",    "FS"}, 
   {"GS",    "GS"}, 
   {"RS",    "RS"}, 
   {"US",    "US"}, 

   {" ",   "space"},
   {"!",   "exclamation"},
   {"\"",  "backslash"},   
   {"#",   "hashmark"},
   {"$",   "dollar"},
   {"%",   "percent"},
   {"&",   "ampersand"},
   {"'",   "apostrophe"},
   {"(",   "left-parenthesis"},
   {")",   "right-paranthesis"},
   {"*",   "asterisk"},
   {"+",   "plus-sign"},
   {",",   "comma"},
   {"-",   "hyphen"},
   {".",   "dot"},
   {"/",   "slash"},

   {"0",   "0"},
   {"1",   "1"},
   {"2",   "2"},
   {"3",   "3"},
   {"4",   "4"},
   {"5",   "5"},
   {"6",   "6"},
   {"7",   "7"},
   {"8",   "8"},
   {"9",   "9"},
   {":",   "colon"},
   {";",   "semicolon"},
   {"<",   "left-angle-bracket"},
   {"=",   "equal-sign"},
   {">",   "right-angle-braket"},
   {"?",   "question-mark"},

   {"@",   "@"},
   {"A",   "A"},
   {"B",   "B"},
   {"C",   "C"},
   {"D",   "D"},
   {"E",   "E"},
   {"F",   "F"},
   {"G",   "G"},
   {"H",   "H"},
   {"I",   "I"},
   {"J",   "J"},
   {"K",   "K"},
   {"L",   "L"},
   {"M",   "M"},
   {"N",   "N"},
   {"O",   "O"},

   {"P",   "P"},
   {"Q",   "Q"},
   {"R",   "R"},
   {"S",   "S"},
   {"T",   "T"},
   {"U",   "U"},
   {"V",   "V"},
   {"W",   "W"},
   {"X",   "X"},
   {"Y",   "Y"},
   {"Z",   "Z"},
   {"[",   "bracket"},
   {"\\",  "backslak"},
   {"]",   "unbracket"}, 
   {"^",   "caret"}, 
   {"_",   "underscore"}, 

   {"`",   "backquote"},
   {"a",   "a"},
   {"b",   "b"},
   {"c",   "c"},
   {"d",   "d"},
   {"e",   "e"},
   {"f",   "f"},
   {"g",   "g"},
   {"h",   "h"},
   {"i",   "i"},
   {"j",   "j"},
   {"k",   "k"},
   {"l",   "l"},
   {"m",   "m"},
   {"n",   "n"},
   {"o",   "o"},


   {"p",    "p"}, 
   {"q",    "q"}, 
   {"r",    "r"}, 
   {"s",    "s"}, 
   {"t",    "t"}, 
   {"u",    "u"}, 
   {"v",    "v"}, 
   {"w",    "w"}, 
   {"x",    "x"}, 
   {"y",    "y"}, 
   {"z",    "z"}, 
   {"{",    "brace"}, 
   {"|",    "pipe"}, 
   {"}",    "unbrace"}, 
   {"~",    "tilde"}, 
   {"DEL",  "DEL"} 

  };
#endif

void format_file (FILE *fpin, FILE *fpout, long int nlines, long int hlines, char idelimiter, char odelimiter, int trim)
{
  int i=1, rs;
  char *buffer=NULL, *p;
  size_t size;
  
  rewind (fpin);

  if (trim)
    for (i=0; i<hlines; i++)
      {
	errno = 0;
	rs = getline (&buffer, &size, fpin);
	sysfatal ((rs<0) && (errno));
      }
  
  
  for (--i; i<nlines; i++)
    {
      /* fseek (fpin, index[i], SEEK_SET); */
      
      errno = 0;
      rs = getline (&buffer, &size, fpin);
      sysfatal ((rs<0) && (errno));

      /* Change delimiter. */

      if (odelimiter != idelimiter)
	{
	  p = buffer;
	  while ( (*p != '\0') )
	    {
	      if ( *p == idelimiter )
		*p = odelimiter;
	      p++;
	    }
	}
	  
      /* We handle the case where the last line of the input file does
	 hot have a trailing newline character. */
      
      fprintf (fpout, "%s%s", buffer, buffer[rs-1] == '\n' ? "" : "\n");
      
      /* fprintf (fpout, "%d : %s|%s", i, buffer, buffer[rs-1] == '\n' ? "" : "\n"); */
    }
  free (buffer);
}


void swaplines (unsigned int *pindex, long int nlines, unsigned int i, unsigned int j)
{
  int k;
  unsigned int aux;
  
  for (k=0; k<nlines; k++)
    pindex[k] = k;

  aux = pindex[i];
  pindex[i] = pindex[j];
  pindex[j] = aux;
  
}

