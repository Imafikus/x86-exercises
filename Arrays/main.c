#include <stdlib.h>
#include <stdio.h>

int suma(int[], int);
int max(int[], int);
void obrni(long[], int);//obrce elemente niza
void udvostruci(int[], int);
int kopiraj_proste(unsigned*, unsigned, unsigned*);
int main()
{
    int n;
    scanf("%d", &n);

    int* a = malloc(n*sizeof(int));

    int i;
    for(i = 0; i < n; i++)
    {
        scanf("%d", &a[i]);
    }

    printf("\n");

    udvostruci(a, n);

    for(i = 0; i < n; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n");



}