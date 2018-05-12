#include <stdio.h>

int add(int, int);
int mul(int, int);
long mul_8bit(int, int);

int main()
{
    int a, b;

    scanf("%d%d", &a, &b);
    int res = mul_8bit(a, b);
    printf("%d * %d = %d\n", a, b, res);

}
