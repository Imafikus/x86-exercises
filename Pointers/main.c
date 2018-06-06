#include <stdio.h>
#define MAX 100

unsigned savrsen_stepen(unsigned n, unsigned *m, unsigned *k);
unsigned izbaci_neparne(long* niz, unsigned* duzina);
void kol_ost(unsigned, unsigned, unsigned*, unsigned*);
void swap(int*, int*);
void bitovska_aritmetika(unsigned, unsigned, unsigned*, unsigned*, unsigned*, unsigned*);

int main()
{
   unsigned a, b;
   unsigned and, or, xor, neg;

   scanf("%u%u", &a, &b);

   bitovska_aritmetika(a, b, &and, &or, &xor, &neg);

   printf("AND je: %u\nOR je: %u\nXOR je: %u\nNEG je: %u\n", and, or, xor, neg);

   
}