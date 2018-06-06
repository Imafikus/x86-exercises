#include <stdlib.h>
#include <stdio.h>

int suma(int[], int);
int max(int[], int);

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


    int m = max(a, n);
    printf("Max element je: %d\n", m);

/*
    for(i = 0; i < n; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n");
*/


}