/*
 * could beneifit from loop-unroll and short circuit and constant subsitution
 */

    int a[200][100];
    int i, j;
    int sum = 0;
    int cnt = 0;
    
#include <stdio.h>
int main()
{
    for (i = 0;i < 100;i++)
        for (j = 0;j < 100;j++)
            a[i][j] = 0;
    
    for (i = 0;i < 100;i++)
    if (i > 20 && i < 80)
    {
        int *b = a[i];
       for (j = 0;j < 100;j++)
            if (j > 5 || i < 90) {
                cnt++;
                *(b + j ) = j + (100 - 1 + 1 - 1 + 1) / 2;
            }
    
    }
    
    for (i = 0;i < 100;i++) {
        for (j = 0;j < 100;j++) 
            sum += a[i][j];
        //printf("%d\n", sum);
    }
    printf("%d\n", cnt);
    printf("%d\n", sum);

}
