#include <stdlib.h>
#include <stdio.h>

int suma(int[], int);

int main()
{
    int n;
    scanf("%d", &n);

    int *a = malloc(n*sizeof(int));

    int i;
    for(i = 0; i < n; i++)
    {
        scanf("%d", &a[i]);
    }


    int s = suma(a, n);
    printf("Suma elemenata je: %d\n", s);

/*
    for(i = 0; i < n; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n");
*/


}