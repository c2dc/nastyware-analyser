#include <stdlib.h>
#include <stdio.h>  // Printf
#include <fcntl.h>   // Fileopen - Fileclose - fprintf - fscan
#include <string.h>
#include <math.h> 
#include <errno.h>

#define lin 50
#define matMN 21870209

FILE *streamR, *streamW;   // Declara ponteiro para o arquivo

char linha[lin],Nomes[matMN][lin],str[50];
int i,j,k;
float Matrix[matMN];
int cont;
long int linhas,elem,ind,colM,colN;

int main(int argc, char *argv[])
{

	if ( (streamR = fopen(argv[1],"r")) == NULL){  // Abre o arquivo para leitura
	  fprintf(stderr, "%s\n", strerror(errno));
		exit(1);
    }

    linhas = 0;
	while (!feof(streamR)){   // Le linha por linha ate' o final do arquivo: eof = end of file !!
		fscanf(streamR,"%s", linha);  // Le uma linha inteira ate' o \n
        linhas++;
    }
	elem = linhas;
    ind = sqrt(elem);
   // printf("elem = %d, ind = %d",elem,ind);
    fclose(streamR);

    if ( (streamR = fopen(argv[1],"r")) == NULL){  // Abre o arquivo para leitura
        printf("Error: File not OPEN!");
        exit(1);
    }

    linhas = 0;
    colM=0;colN=0;
	while (!feof(streamR)){   // Le linha por linha ate' o final do arquivo: eof = end of file !!
	    fscanf(streamR,"%s", linha);  // Le uma linha inteira ate' o \n
        if (linhas%(ind+1)!=0){
            for(i=0;i<lin;i++){
                if (linha[i]==',')
                    linha[i]='.';
            }
            Matrix[colM]=atof(linha);
            colM++;
        }
        else{
            for(i=0;i<lin;i++){
                Nomes[colN][i]=linha[i];
            }
            colN++;
        }
        linhas++;
    }
    fclose(streamR);

    if ( (streamW = fopen(argv[2],"w")) == NULL){  // Cria ou Abre o arquivo para adicionar registros
		printf("Error: File not OPEN!");
		exit(1);
    }

    fprintf(streamW,"%ld\n",ind);

    for (i=0;i<ind;i++){
        if ( strlen(Nomes[i]) < 10 )
           strncat(Nomes[i],"---------",10-strlen(Nomes[i]));
        strncpy(str,Nomes[i],10);
        for(k=0;k<lin;k++){
            Nomes[i][k]=str[k];
        }
        fprintf(streamW,"%s ",Nomes[i]);

        cont=0;
        for (j=i*ind;j<(i+1)*ind;j++){
            fprintf(streamW,"%f ",(Matrix[j]+Matrix[ind*cont+i])/2);
            cont++;
        }
        fprintf(streamW,"\n");
    }


    fclose(streamW);

return 0;
}

