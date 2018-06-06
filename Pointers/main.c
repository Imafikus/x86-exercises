#include <stdio.h>
#define MAX 100

unsigned savrsen_stepen(unsigned n, unsigned *m, unsigned *k);
unsigned izbaci_neparne(long* niz, unsigned* duzina);
void swap(int*, int*);

int main()
{
    int a = 3;
    int b = 9;

    printf("a = %d  b = %d\n", a, b);
    swap(&a, &b);

    printf("a = %d  b = %d\n", a, b);
   
}