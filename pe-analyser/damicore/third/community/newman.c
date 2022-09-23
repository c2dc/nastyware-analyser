/* ncd - Calculate NCD as fast as possible

  Copyright (C) 2011 Alexandre Claudio Botazzo Delbem
 
  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.
 
  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.
 
  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <https://www.gnu.org/licenses/>.

*/



#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "newman.h"


void alterar_mt_adj(char **mt_adj, int n, int maximo,
		int *vt_rotulos)
{
	for (int i = n - 1; i > 0; i--) {
		int num_um = 0;
		for (int x = 0; x < n; x++) {
			num_um += mt_adj[i][x];
		}
		for (int j = i - 1; j >= 0 && num_um < maximo; j--) {
			if (vt_rotulos[i] == vt_rotulos[j]) {
				if (mt_adj[i][j] == 0) {
					mt_adj[i][j] = 1;
					num_um++;
				}
			}
		}
	}
}


void imprimir_matriz(char **mt_adj, int n)
{
	for (int i = 0; i < n; i++) {
		printf("| ");
		for (int j = 0; j < n; j++) {
			printf("%d ", mt_adj[i][j]);
		}
		printf("|\n");
	}
}

void imprimir_matriz_int(int **mt_adj, int n)
{
	for (int i = 0; i < n; i++) {
		printf("| ");
		for (int j = 0; j < n; j++) {
			printf("%d ", mt_adj[i][j]);
		}
		printf("|\n");
	}
}


void imprimir_vetor(int *vt_rotulos, int n)
{
	printf("| ");
	for (int x = 0; x < n; x++) {
		printf("%i ", vt_rotulos[x]);
	}
	printf("|\n");
}


char **criar_matriz(int n)
{
	char **matriz =
		(char **) calloc(sizeof(char *), n);
	if(matriz== NULL)
	{
		printf("Could not allocate memory to matriz");
		exit(1);
	}

	for (int i = 0; i < n; i++) {
		matriz[i] = (char *) calloc(sizeof(char), n);
		if(matriz[i]== NULL)
		{
			printf("Could not allocate memory to matriz[i]");
			exit(1);
		}
	}
	return matriz;
}

int **criar_matriz_int(int n)
{
	int **matriz =
		(int **) calloc(sizeof(int *), n);
	if(matriz== NULL)
	{
		printf("Could not allocate memory to matriz");
		exit(1);
	}

	for (int i = 0; i < n; i++) {
		matriz[i] = (int *) calloc(sizeof(int), n);
		if(matriz[i]== NULL)
		{
			printf("Could not allocate memory to matriz[i]");
			exit(1);
		}
	}
	return matriz;
}

int num_arestas_total(char **mt_adj, int n)
{
	int num = 0;
	for (int i = 0; i < n; i++) {
		for (int j = 0; j < n; j++) {
			num += mt_adj[i][j];
		}
	}
	return num;
}


int num_arestas_internas(int rotulo,
		char **mt_adj, int n,
		int *vt_rotulos)
{
	int num = 0;
	for (int no = 0; no < n; no++) {
		if (vt_rotulos[no] == rotulo) {
			for (int j = 0; j < no; j++) {
				if (vt_rotulos[j] == rotulo) {
					num += mt_adj[no][j];
				}
			}
		}
	}
	return num;
}


int somatorio_graus(int rotulo,
		char **mt_adj, int n,
		int *vt_rotulos)
{
	int num = 0;
	for (int i = 0; i < n; i++) {
		if (vt_rotulos[i] == rotulo) {
			for (int j = 0; j < i; j++) {
				num += mt_adj[i][j];
			}
		}
	}
	for (int j = 0; j < n; j++) {
		if (vt_rotulos[j] == rotulo) {
			for (int i = j; i < n; i++) {
				num += mt_adj[i][j];
			}
		}
	}
	return num;
}


double modularidade(char **mt_adj, int n,
		int *vt_rotulos)
{
	double eii, ai;
	int sg, nai;
	int rotulo;
	double q = 0.0;
	int nat = num_arestas_total(mt_adj, n);
	char *crivo = (char *) calloc(sizeof(char), n);
	if(crivo== NULL)
	{
		printf("Could not allocate memory to crivo 2");
		exit(1);
	}
	for (int rt = 0; rt < n; rt++) {
		if (!crivo[vt_rotulos[rt]]) {
			crivo[vt_rotulos[rt]] = 1;
			rotulo = vt_rotulos[rt];
			sg = somatorio_graus(rotulo, mt_adj, n, vt_rotulos);
			nai = num_arestas_internas(rotulo, mt_adj, n, vt_rotulos);
			eii = (double) nai / (double) nat;
			ai = (double) (sg - nai) / (double) nat;
			q += eii - ai * ai;
		}
	}
	free(crivo);
	return q;
}


int num_arestas_entre_a_b(int rotulo_a,
		int rotulo_b,
		char **mt_adj, int n,
		int *vt_rotulos)
{
	int a_b, b_a;
	int num = 0;
	for (int i = 0; i < n; i++) {
		for (int j = 0; j < n; j++) {
			a_b = vt_rotulos[i] == rotulo_a && vt_rotulos[j] == rotulo_b;
			b_a = vt_rotulos[i] == rotulo_b && vt_rotulos[j] == rotulo_a;
			if (a_b || b_a) {
				num += mt_adj[i][j];
			}
		}
	}
	return num;
}


double delta_modularidade(int rotulo_a,
		int rotulo_b,
		char **mt_adj, int n,
		int *vt_rotulos)
{
	double delta_q;
	int sg, nai;
	double ai, aj;
	int naec = num_arestas_entre_a_b(rotulo_a, rotulo_b, mt_adj, n,
			vt_rotulos);
	int nat = num_arestas_total(mt_adj, n);
	double eij2 = (double) naec / (double) nat;

	sg = somatorio_graus(rotulo_a, mt_adj, n, vt_rotulos);
	nai = num_arestas_internas(rotulo_a, mt_adj, n, vt_rotulos);
	ai = (double) (sg - nai) / (double) nat;
	sg = somatorio_graus(rotulo_b, mt_adj, n, vt_rotulos);
	nai = num_arestas_internas(rotulo_b, mt_adj, n, vt_rotulos);
	aj = (double) (sg - nai) / (double) nat;
	delta_q = eij2 - 2 * (ai * aj);
	return delta_q;
}


void unir_a_b(int rotulo_a,
		int rotulo_b,
		int *vt_rotulos, int n)
{
	for (int x = 0; x < n; x++) {
		if (vt_rotulos[x] == rotulo_b) {
			vt_rotulos[x] = rotulo_a;
		}
	}
}


double busca_gulosa(char **mt_adj, int n,
		int *vt_rotulos)
{
	double delta_q, maior_delta_q = -999.0;
	char *crivo = (char *) calloc(sizeof(char), n);
	if(crivo== NULL)
	{
		printf("Could not allocate memory to crivo");
		exit(1);
	}
	//***printf("fn 8a\n");
	for (int x = 0; x < n; x++) {
		//***printf("x:%d, vt_rotulos[x]:%d\n",x,vt_rotulos[x]);
		crivo[vt_rotulos[x]] = 1;
	}
	//***printf("fn 8b\n");
	int melhor_rt_a = 0, melhor_rt_b = 0;
	for (int rt_a = 0; rt_a < n; rt_a++) {
		if (crivo[rt_a]) { // rt_a é uma comunidade?
			for (int rt_b = rt_a + 1; rt_b < n; rt_b++) {
				if (crivo[rt_b]) { // rt_b é uma comunidade?
					if (num_arestas_entre_a_b(rt_a, rt_b, mt_adj, n, vt_rotulos) > 0) {
						delta_q = delta_modularidade(rt_a, rt_b, mt_adj, n, vt_rotulos);
						if (maior_delta_q < delta_q) {
							maior_delta_q = delta_q;
							melhor_rt_a = rt_a;
							melhor_rt_b = rt_b;
						}
					}
				}
			}
		}
	}
	//***printf("fn 8c\n");
	if (maior_delta_q != -999.0) {
		unir_a_b(melhor_rt_a, melhor_rt_b, vt_rotulos, n);
	}
	free(crivo);
	return maior_delta_q != -999.0;
}

int indice_do_maior(double *vt_modularidades, int n)
{
	double maior = vt_modularidades[0];
	int id_maior = 0;
	for (int x = 1; x < n; x++) {
		if (vt_modularidades[x] > maior) {
			maior = vt_modularidades[x];
			id_maior = x;
		}
	}
	return id_maior;
}

int max_comunidades(int *vt_rotulos, int n)
{
	int num_vertices[n]; // vetor contador
	int x;
	for(x=0;x<n;x++) num_vertices[x]=0;
	for(x=0;x<n;x++) num_vertices[vt_rotulos[x]]+=1; //incrementa contador    
	int maior = 0;
	for(x=1;x<n;x++)
	{
		if(num_vertices[x]>num_vertices[maior]) maior=x;
	}
	//printf("vt_rotulos:\n");
	//for(x=0;x<n;x++) printf("%d ",vt_rotulos[x]);
	//printf("\n");
	//printf("maior %d\n",maior);
	return num_vertices[maior];    
}

//Seleciona indíce da estrutura com maior modularidade e com número máximo "max" de vértices por comunidade
int indice_aceitavel(int **mt_dendograma, double *vt_modularidades, int n, int max)
{
	int indice;
	/*int x;*/
	indice = indice_do_maior(vt_modularidades, n);
	//***VERIFICAR ESSE TRECHO. ESTÁ DANDO ERRO. Deixando comentado não coloca limite no número máximo de vértices por comunidade, como no OBDC
	// Nota: é possível que o erro tenha sido causado após a mudança de unsigned char para char
	/*
	   while(max_comunidades(mt_dendograma[indice],n)>max)
	   {
	   vt_modularidades[indice]=-999;
	   indice = indice_do_maior(vt_modularidades, n);
	   if(vt_modularidades[indice]==-999)
	   {
	   printf("Error: There is no acceptable structure\n");
	   printf("Modularidades:\n");
	   for(x=0;x<n;x++)
	   {
	   printf("%f\n",vt_modularidades[x]);
	   }
	   exit(1);
	   }
	   }
	   */
	//for(x=0;x<n;x++) printf("indice: %d e maior valor=%d\n",x,max_comunidades(mt_dendograma[x],n));
	//printf("indice selecionado: %d e maior valor=%d\n",indice,max_comunidades(mt_dendograma[indice],n));
	return indice;
}

void adaptar_matriz(char **mt_adj2, char **mt_adj, int n)
{
	for(int i=0;i<n;i++)
	{
		for(int j=0;j<n;j++)
		{
			if(j<i)
			{
				if(mt_adj[i][j]!=2)mt_adj[i][j]=mt_adj2[i][j];
				else mt_adj[i][j]=1;
			}
			else
			{
				mt_adj[i][j]=0;
				if(mt_adj2[i][j]==1)
				{
					mt_adj[j][i]=2;                    
				}
			}
		}        
	}
}

int *fast_newman(char **mt_adj2, int n)
{
	char **mt_adj = criar_matriz(n);

	adaptar_matriz(mt_adj2,mt_adj,n);

	// Código para debugar
	/*
	   imprimir_matriz(mt_adj,n);
	   printf("\n");
	   imprimir_matriz(mt_adj2,n);
	   printf("\n");
	   */
	//exit(0);

	int **mt_dendograma = criar_matriz_int(n);
	//***printf("fn 1\n");
	double *vt_modularidades = (double *) calloc(sizeof(double), n);
	if(vt_modularidades== NULL)
	{
		printf("Could not allocate memory to vt_modularidades");
		exit(1);
	}
	//***printf("fn 2\n");
	for (int x = 0; x < n; x++) {
		vt_modularidades[x] = -999999999999.0;
	}

	int *vt_rotulos = (int *) calloc(sizeof(int), n);
	if(vt_rotulos== NULL)
	{
		printf("Could not allocate memory to vt_rotulos");
		exit(1);
	}

	for (int x = 0; x < n; x++) {
		vt_rotulos[x] = x;
	}

	//Se número de total de arestas = 0, caso específico. Retornar pra evitar divisão por 0
	int nat = num_arestas_total(mt_adj, n);
	if(nat==0) {
		for (int k=0; k<n; k++)
			free(mt_dendograma[k]);
		free(mt_dendograma);
		free(vt_modularidades);
		free(mt_adj);
		return vt_rotulos;
	}

	memcpy(mt_dendograma[n-1], vt_rotulos, n*sizeof(int));// Folhas.

	//código para debugar
	/*
	   for(int i=0;i<n;i++) printf("%d, ",mt_dendograma[n-1][i]);
	   printf("\n");

	   for(int i=0;i<n;i++) printf("%d, ",vt_rotulos[i]);
	   printf("\n");

	   imprimir_matriz_int(mt_dendograma, n);
	   printf("\n");
	   */

	vt_modularidades[n-1] = modularidade(mt_adj, n, vt_rotulos);

	int x = n-2; // Acima das Folhas.
	while (busca_gulosa(mt_adj, n, vt_rotulos)) {
		memcpy(mt_dendograma[x], vt_rotulos, n*sizeof(int));
		vt_modularidades[x] = modularidade(mt_adj, n, vt_rotulos);
		x--;

		//ASDFG
		//imprimir_matriz(mt_dendograma, n);
		//printf("\n");
	}

	// código para debugar
	//imprimir_matriz_int(mt_dendograma, n);

	// usar para ODIR. verificar função (está com código comentado)
	//int indice = indice_aceitavel(mt_dendograma, vt_modularidades, n, 16);  

	int indice = indice_do_maior(vt_modularidades, n);

	// código para debugar
	/*
	   for(int i=0;i<n;i++) printf("%f, ",vt_modularidades[i]);
	   printf("índice escolhido: %d, x: %d\n",indice,x);
	   */

	memcpy(vt_rotulos, mt_dendograma[indice], n*sizeof(int));


	// for(x=0;x<n;x++) printf("%f ",vt_modularidades[x]);

	//free(mt_dendograma);

	//***printf("will release memory\n");
	for (int k=0; k<n; k++)
		free(mt_dendograma[k]);
	free(mt_dendograma);
	free(vt_modularidades);
	free(mt_adj);

	// código para debugar
	/*
	   for(x=0;x<n;x++)
	   {
	   printf("%d ",vt_rotulos[x]);               
	   }
	   printf("\n");
	   */    

	return vt_rotulos;
}


void conectar_comunidades(char **mt_adj, int n, int maximo) {
	int *vt_rotulos = fast_newman(mt_adj, n);
	alterar_mt_adj(mt_adj, n, maximo, vt_rotulos);
}
