#include <stdio.h>

int max(int, int);//returns greater of 2 numbers
int div_4(int);//returns 1 if a % 4 == 0. 0 else
int main()
{
    int a, b;
    scanf("%d%d", &a, &b);

    int k = div_4(a);
    
    if(k == 1)
        printf("is okay\n");
    else   
        printf("not okay\n");
}