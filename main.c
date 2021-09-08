#include <stdio.h>
#include <stdlib.h>
//PROMEDIO DE LOS NUMEROS

extern int promedio (int n, int * arr);

int main (int argc, char **argv){

    int n;
    int * arr;

    if(argc>1){

        n= argc - 1;    
        arr= (int*)malloc(n*sizeof(int));

        for(int i=0; i<n; i++){
            arr[i]=(int)atoi(argv[i+1]);
        }
    }
    else{
        //validar si no tengo datos, o no ejecutar la funcion promedio o darle
        //valores random y el programa no se caiga
        n=3;
        arr = (int*)malloc(n*sizeof(int));

        for(int i=0; i<n; i++){
            arr[i]=i+1;
        }
    }

    printf("El promedio de los numeros:\n");
    for(int i=0; i<n; i++){
            printf("%d\t",arr[i]);
    }
    printf("es:\n");

    printf("%d\n", promedio ( n, arr));

    free(arr);

    return 0;
}