#ifndef NEWMAN_H
#define NEWMAN_H


void alterar_mt_adj(char **mt_adj, int n, int maximo,
                    int *vt_rotulos);

void imprimir_matriz(char **mt_adj, int n);

void imprimir_vetor(int *vt_rotulos, int n);

char **criar_matriz(int n);

int num_arestas_total(char **mt_adj, int n);

int num_arestas_internas(int rotulo,
                         char **mt_adj, int n,
 	                      int *vt_rotulos);

int num_arestas_entre_a_b(int rotulo_a,
                          int rotulo_b,
                          char **mt_adj, int n,
                          int *vt_rotulos);

int somatorio_graus(int rotulo,
                    char **mt_adj, int n,
                    int *vt_rotulos);

double modularidade(char **mt_adj, int n,
                    int *vt_rotulos);

double delta_modularidade(int rotulo_a,
                          int rotulo_b,
                          char **mt_adj, int n,
                          int *vt_rotulos);

void unir_a_b(int rotulo_a,
              int rotulo_b,
              int *vt_rotulos, int n);

double busca_gulosa(char **mt_adj, int n,
                    int *vt_rotulos);

int indice_do_maior(double *vt_modularidades, int n);

int *fast_newman(char **mt_adj, int n);

void conectar_comunidades(char **mt_adj, int n, int maximo);

#endif
