#include <stdio.h>
#define MAX 100

unsigned savrsen_stepen(unsigned n, unsigned *m, unsigned *k);
unsigned izbaci_neparne(long* niz, unsigned* duzina);
void kol_ost(unsigned, unsigned, unsigned*, unsigned*);
void swap(int*, int*);

int main()
{
   unsigned a, b;
   unsigned kol, ost;

   scanf("%u%u", &a, &b);

   kol_ost(a, b, &kol, &ost);

   printf("Kolicnik je: %u\nOstatak je: %u\n", kol, ost);

   
}