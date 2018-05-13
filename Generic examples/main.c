#include <stdio.h>

int max(int, int);//returns greater of 2 numbers
int div_4(int);//returns 1 if a % 4 == 0. 0 else
int sum_n(int);//sum of n numbers
int sum_n_gaus(int);//sum of n numbers using Gaus method

int main()
{
    int a;
    scanf("%d", &a);

    int k = sum_n_gaus(a);
    
    printf("sum is: %d\n", k);
}