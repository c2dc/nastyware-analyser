#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <regex.h>
#include <sys/types.h>
#include "newman.h"

#define MAX_SIZE 1000

enum boolean {f,t};

struct index_label {
   int i;
   char l[11];
};

int forward(FILE * ifp);

int imprimat (int n, struct index_label node_v[], int matadj[][MAX_SIZE]);

int main(int argc, char *argv[])
{
   
    FILE *ifp;
   /*char c;*/
   char s[4096];
   int i,j,i_m,j_m,n,re_match;
   //enum boolean matadj[MAX_SIZE][MAX_SIZE];
   //int matadj[MAX_SIZE][MAX_SIZE];// = {0};
   //int **matadj;
   //matadj = criar_matriz_int(MAX_SIZE);
   int matadj[MAX_SIZE][MAX_SIZE];
   regex_t re;

   if( regcomp(&re, "^[0-9]\\{1,\\}$", 0) ) {
   	fprintf(stderr, "regcomp() failed.\n");
	exit(EXIT_FAILURE);
   }


   for(int i=0;i<MAX_SIZE;i++)
   for(j=0;j<MAX_SIZE;j++)matadj[i][j]=0;

   char **mat;
   struct index_label node_v[MAX_SIZE];

   ifp = fopen(argv[1],"r");
   forward(ifp);

   for (i=0; i<MAX_SIZE; i++)
      node_v[i].i = 0;
   i = 0;
   fscanf(ifp,"%s",s);
   strcpy(node_v[i].l , s);
   node_v[i].i = 1;
   i++;

   while (fscanf(ifp,"%s",s) != EOF) {
      strcpy(node_v[i].l , s);
      node_v[i].i = 1;
      fscanf(ifp,"%s",s); //skip Length column
      fscanf(ifp,"%s",s); //skip first column
      i++; 
   }
   n = i;
   //printf("n = %d",n);
   //for (i=0; i<n; i++)
   //   if (node_v[i].i == t)
   //      printf("\n%10s",node_v[i].l);
   fclose(ifp);


   ifp = fopen(argv[1],"r");
   forward(ifp);
   while (fscanf(ifp,"%s",s) != EOF) {
      for (i=0; i<n; i++){
         //printf("\n%s == %s", s, node_v[i].l);
         if (strcmp(s, node_v[i].l) == 0)
            i_m = i;
         }
         //printf("\n\n%4d", i_m);
      fscanf(ifp,"%s",s);
      for (i=0; i<n; i++)
         if (strcmp(s, node_v[i].l) == 0)
            j_m = i;
      matadj[i_m][j_m] = 1;
      matadj[j_m][i_m] = 1;
      fscanf(ifp,"%s",s);
   }
   fclose(ifp);

   //imprimat (n, node_v, matadj);

   //alloca uma matrix nxn de char (funcao declarada em newman.h)
   mat = criar_matriz(n);

   for (i=0; i<n; i++)
      for (j=0; j<n; j++)
         mat[i][j] = (char) matadj[i][j];

    // Chama Fast Algorithm para detectar comunidades na matriz "mat"
    
    //Verifica tamanho da matriz passada para fast_newman
    
    int *rotulos = fast_newman(mat,n);

    //Imprime vetor de rótulos, que deve ter n elementos
    //printf("vetor de rotulos:\n");
    //for(i=0;i<n;i++) printf("%d, ",rotulos[i]);
    
    for(i=0;i<n;i++)
       {
	   /* COMENTADO POR Renê: Set / 2014
		* if ( strpbrk("_",node_v[i].l) || // if '_' matches any c=s[i] char in s, returns &s[i] 
            strpbrk("-",node_v[i].l)    )
          printf("\n%10s %d, ", node_v[i].l,rotulos[i]);
		*/
	 	/* ADICIONADO POR Renê: Set / 2014
		 * Executa uma ER para casar com os números dos nós, se não casa, então
		 * temos o nome de um nó, que deve ser considerado. */
			re_match = regexec(&re, node_v[i].l, 0, NULL, 0);
			if (re_match == REG_NOMATCH) {
				printf("\n%10s %d, ", node_v[i].l, rotulos[i]);
			}
       }
	  
    printf("\n\n");   
 
    free(rotulos); //libera a memoria do vetor de rï¿½tulos
    free(mat); //libera memoria matriz

   return 0;
}


int forward(FILE * ifp) {

   char s[4096];

   fscanf(ifp,"%s", s);
   while (s[0] != 'B')
      fscanf(ifp,"%s", s);
   fscanf(ifp,"%s", s); //skip some strings
   fscanf(ifp,"%s", s);
   fscanf(ifp,"%s", s);
   fscanf(ifp,"%s", s);
   fscanf(ifp,"%s", s);

   return 0;
}

int imprimat (int n, struct index_label nv[], int ma[][MAX_SIZE]) {
   int i,j;

   printf("\n           ");
   for (i=0; i<n; i++)
      printf("%10s ", nv[i].l);
   printf("\n");
   for (i=0; i<n; i++)
      {
      printf("%10s ", nv[i].l);
      for (j=0; j<n; j++)
         printf("%10d ", (int) ma[i][j]);
      printf("\n");
      }
      
   return 0;
}




