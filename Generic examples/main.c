#include <stdio.h>

int max(int, int);//returns greater of 2 numbers

int main()
{
    int a, b;
    scanf("%d%d", &a, &b);

    int k = max(a, b);
    printf("max = %d\n", k);
}