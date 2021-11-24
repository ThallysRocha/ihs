#include <stdio.h>
#include <stdlib.h>

extern void ordenaVetor(int* valores, int tam);

int main() {

    int* valores;
    int qtd = 0;

    printf("Qual será tamanho do vetor? (até 10 valores) ");
    scanf(" %d",&qtd);

    if(qtd > 10) qtd = 10;

    valores = (int*) malloc(qtd*sizeof(int));
    printf("Digite os valores: ");
    for(int i = 0;i < qtd;i++){
        scanf(" %f",&valores[i]);        
    }

    ordenaVetor(valores,qtd);

    printf("\nO vetor ordenado é: ");
    for(int i = 0;i < qtd;i++){
        printf("[%f] ",valores[i]);        
    }

    return 0;

}

