#include <stdio.h>

unsigned is_prime(unsigned);

int main()
{
    unsigned a;
    scanf("%u", &a);

    unsigned t = is_prime(a);
    if(t == 0)
        printf("Broj nije prost\n");
    else
        printf ("Broj je prost\n");


}