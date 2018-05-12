#include <stdio.h>

int add(int, int);
int mul(int, int);

int main()
{
    int a, b;

    scanf("%d%d", &a, &b);
    int res = mul(a, b);
    printf("%d * %d = %d\n", a, b, res);

}
