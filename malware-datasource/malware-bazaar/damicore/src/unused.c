#include <stdarg.h>
#include <stdio.h>
#include "debug.h"

#define PROGRAM "Unused"

void permutations2(unsigned int length)
{
  unsigned int i,j,k;
  unsigned int first, last;
  unsigned int *index;

  index = malloc (length * sizeof(unsigned int));
  sysfatal (!index);
  
  first = 0;
  last = length-1;

  /* for (i=first; i<last; i++) */
  for (i=first; i<=last; i++)
    {
      /* for (j=i+1; j<=last; j++) */
      for (j=i+0; j<=last; j++)
	{
	  printf ("(%d, %d)   ",i,j);

	  for (k=0; k<length; k++)
	    {
	      if (k==i)
		index[k] = j;
	      else if (k==j)
		index[k] = i;
	      else
		index[k] = k;
	      printf ("%c ", 'a'+index[k]);
	    }
	  printf ("\n");
	  
	}
    }

}



void swap(char* x, char* y)
{
  char temp;
    temp = *x;
    *x = *y;
    *y = temp;
}

void permute_(char* a, int l, int r)
{
  int i;
  if (l == r)
    printf("%s\n", a);
  else {
    for (i = l; i <= r; i++) {
      swap((a + l), (a + i));
      permute_(a, l + 1, r);
      swap((a + l), (a + i)); 
    }
  }
}


void permute(char* a, int l, int r)
{
  int i;
  if (l == r)
    printf("%s\n", a);
  else {
    for (i = l; i <= r; i++) {
      swap((a + l), (a + i));
      permute_(a, l + 1, r);
      swap((a + l), (a + i)); 
    }
  }
}


void foo (int a, ...)
{
  va_list ap;

  va_start (ap, a);

  printf ("Got %s\n", va_arg (ap, char*));
}



int main()
{

  char str[] = "abc";
  int n = strlen(str);

  void (*func)(int, ...); 

  /* permute (str, 0, n - 1); */

  foo (10, "Hello");

  func = foo;

  func (20, "Dahh");
  
  return 0;
}

unsigned int pi,pj;
unsigned int *p_index = NULL;

void reset_permutation (unsigned int length)
{
  pi = 0;
  pj = pi;
  if (p_index)
    free (p_index);
  p_index = malloc (length * sizeof(unsigned int));
  sysfatal (!p_index);
}

int permutation (unsigned int *index, unsigned int length)
{
  unsigned int first, last, k;

  first = 0;
  last = length-1;
  
  
  for (k=0; k<length; k++)
    {
      if (k==pi)
	p_index[k] = index[pj];
      else if (k==pj)
	p_index[k] = index[pi];
      else
	p_index[k] = index[k];
      printf ("%u ", p_index[k]);
    }
  printf ("\n");

  pj = pj + 1;
  if (pj > last)
    {
      pi = pi + 1;
      if (pi == last)
	return 0;
      pj = pi + 1;
    }

  
  return 1;
}

/* Get colum and return number of lines. 

   If there is no line 'col', return -1;
*/

int get_csv_colum_real (FILE *fp, char delimiter, unsigned int hlines,
		   int col, long double *array)
{
  int rs;
  unsigned int nchars, i;
  unsigned int nlines=0;
  char *buffer=NULL, *aux=NULL;;
  size_t length=0;
  
  rewind (fp);


  /* Skip heading lines. */
  
  for (i=0; i<hlines; i++)
    {
      if (!aux) aux = buffer;      
      rs = getline (&buffer, &length, fp);
      sysfatal (rs<0);
      array[i]=0;
    }
  nlines = i;

  /* Get the remainging lines. */
  
  errno = 0;
  while ( (nchars = getline (&buffer, &length, fp)) != -1)
    {
      if (!aux) aux = buffer;      
      for (i=0; i<col; i++)
	{
	  buffer = strchr (buffer, delimiter);
	  if (!buffer)
	    return -1;
	  buffer++;
	}
      array[nlines] = strval (buffer, 26);
      fprintf (stderr, "read %s got %Lf\n", buffer, array[nlines]);
      /* sscanf (buffer, "%f", &array[nlines]); */
      nlines++;
    }
  sysfatal (errno);
  
  free (aux);
  
  return nlines-1;
}

int get_csv_colum_float (FILE *fp, char delimiter, unsigned int hlines,
		   int col, float *array)
{
  int rs;
  unsigned int nchars, i;
  unsigned int nlines=0;
  char *buffer=NULL, *aux=NULL;;
  size_t length=0;
  
  rewind (fp);


  /* Skip heading lines. */
  
  for (i=0; i<hlines; i++)
    {
      if (!aux) aux = buffer;      
      rs = getline (&buffer, &length, fp);
      sysfatal (rs<0);
      array[i]=0;
    }
  nlines = i;

  /* Get the remainging lines. */
  
  errno = 0;
  while ( (nchars = getline (&buffer, &length, fp)) != -1)
    {
      if (!aux) aux = buffer;      
      for (i=0; i<col; i++)
	{
	  buffer = strchr (buffer, delimiter);
	  if (!buffer)
	    return -1;
	  buffer++;
	}
      sscanf (buffer, "%f", &array[nlines]);
      nlines++;
    }
  sysfatal (errno);
  
  free (aux);
  
  return nlines-1;
}


/* Return the base-n value of the first non-blank token in str. */

long double strval (const char *str, int nletters)
{
  long double val=0;
  char *end;
  unsigned int pval=1;
  unsigned int qval=1;
  unsigned int base = 10+nletters;

  /* Last char in str. */
  end = (char *) str;
  while (*(++end));

  /* Scan backwards. */
  
  end--;
  while ((end >= str))
    {

      if ( (*end >= '0') && (*end <='9') )                /* Numbers. */
	{
	  val = val + (*end - '0') * pval;
	  pval = pval * base;
	  qval = qval * 10;
	  /* p++; */
	}
      else if ( (*end >= 'a') && (*end < ('a'+nletters))) /* Letters. */
	{
	  val = val + (*end - 'a' + 10) * pval;
	  pval = pval * base;
	  qval = qval * 10;
	  /* p++; */
	}
      else if ( (*end >= 'A') && (*end < ('A'+nletters))) /* Letters. */
	{
	  val = val + (*end - 'A' + 10) * pval;
	  pval = pval * base;
	  qval = qval * 10;
	  /* p++; */
	}
      /* else if (*end == ' ') */
      /* 	{ */
      /* 	  val = 0; */
      /* 	  pval = 1; */
      /* 	  qval = 1;	   */
      /* 	} */
      else if ( *end == '.')	                   /* Decimal separator.*/
	{
	  val = (val/qval) * 10 / base;
	  pval = 1;
	  qval = 1;
	}

      end--;
    }

  return val;
  
}

/* Permutatation callback.

   This function is called by permute(index, length, ...) for each permutation.
   User should implement the desired behavior.

   Argument 'pindex' is a permutation of vector 'index' whose size is 'length'.
   Argument ap is a vector point containing all optional arguments passed to
   the varidac function permute() --- the list of arguments may be retrieved
   with the aide of va_arg macro.

*/

void action (unsigned int *pindex, unsigned int length, va_list *ap)
{
  va_list apt;
  FILE *fpin, *fpout;
  char *prefix;
  unsigned int nperm, step=0;
  
  /* Operate on a copy so as not corrupt original *ap. */
  
  va_copy (apt, *ap);

  /* User-defiined behavior. */
  
  fpin  = va_arg (apt, FILE *);
  nperm = va_arg (apt, unsigned int);
  prefix = va_arg (apt, char *);
  
  if ( (!(pcount % (step+1))) && (pcount<nperm)    )
    {
      epcount++;
      if (!prefix)
	{
	  output_file (fpin, stdout, pindex, length, 0);
	  printf ("\n");
	}
      else
	{
	  sprintf (pfile, "%s-%d", prefix, pcount);
	  fpout = fopen (pfile, "w");
	  output_file (fpin, fpout, pindex, length,0);
	  fclose (fpout);
	}
    }

  pcount++;
  
  /* Dismiss the copy of ap. */
  
  va_end (apt);

  return;
}

/* Generate all permutation of vector 'index', from position 'start' up to
   position 'end'. Option arguments 'ap' are passed to the user-implemented
   callback function action(). 

   This function is not meant to be issued directly by the user, but indirectly
   via function permute().

   This is a recursive function which compute all line permutations in file 'fp'.
   Vector 'index' is filled with the index of each line (first character offset).
   Parameters start and end are used by the recursive algorithm. 

   For each permutation, user-implemented call back function 'action' is called with
   arguments 'index', 'length' and 'ap' (a variadic pointer).
 */
void swap (unsigned int *p, unsigned int *q);

int foo=0;

void permute_ (unsigned int *index, unsigned int start, unsigned int end, va_list *ap)
{
  int i;
  int step=1;

  foo++;
  
  if (start == end)
    {
      action (index, end+1, ap);       /* Invoke callback. */
    }
  else
    {

      for (i = start; i <= end; i+=step)
	{
	  swap ((index+start), (index+i));	  
	  permute_ (index, start + 1, end, ap);  
	  swap ((index+start), (index+i));
	}
    }
}

/* Generate all permutations of 'length'-size vector 'index',]
   Optional arguments are passed to the user-implemented callback
   invoked for each permutation. 
   
   This is the function called by the user.

*/

void permute (unsigned int *index, unsigned int length, unsigned int hlines, ...)
{
  va_list ap;

  va_start (ap, hlines);

  /* Call the recursive function which actually generate the permutations. */

  pcount = 0;
  epcount = 0;
  
  permute_ (index, hlines, length-1, &ap);

  fprintf (stderr, "%d calls\n", foo);
  
}


/* void rand_permute (unsigned int *index, unsigned int length, unsigned int hlines, unsigned int nperm, int seed, ...) */
/* { */
/*   va_list ap; */
/*   unsigned int i, j, count=0, r; */
/*   unsigned int perms[nperm][length-hlines]; */
/*   unsigned int elines; */

/*   elines = nlines - hlines; */
  
/*   va_start (ap, seed); */

/*   for (i=0; i<nperm; i++) */
/*     { */

/*       for (j=0; j< elines; j++) */
/* 	{ */
	  
/* 	  r = rand() % (max + 1 - min) + min;       */
/* 	  perms[i][j] = r; */
/* 	} */
      
/*     } */

/* } */
