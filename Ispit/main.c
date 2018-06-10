#include <stdio.h>
#include <stdlib.h>

void izbaci_neparne(long* niz, unsigned *duzina);
//int abs(int);
int proizvod_apsolutnih(int* ,int);
int rekurentna(int);
int main()
{
    int n;
    scanf("%d", &n);

    int rek = rekurentna(n);

    printf("%d-ti clan rekurentne je: %d\n", n, rek);
/*

    int* niz = malloc(n*sizeof(int));

    int i;
    for(int i = 0; i < n; i++)
    {
        scanf("%d", &niz[i]);
    }
    printf("\n");

    int s = proizvod_apsolutnih(niz, n);
    printf("proizvod_apsolutnih je: %d\n", s);

    for(int i = 0; i < n; i++)
    {
        printf("%d ", niz[i]);
    }
    printf("\n");
*/
}