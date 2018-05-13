#include <stdio.h>

int add(int, int);
int mul(int, int);
long mul_8bit(int, int);
int div(int, int);//FIXME

int main()
{
    int a, b;

    scanf("%d%d", &a, &b);
    int res = div(a, b); //FIXME
    printf("%d / %d = %d\n", a, b, res);

}
