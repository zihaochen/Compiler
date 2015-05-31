#include<stdio.h>
#include <stdlib.h>

int a[10];
int n = 10;

int main() {
	int i;
	for (i = 0; i < n; i++)
		a[i] = i;
	for (i = 0; i < n; i++) 
		printf("%d,%d\n", a[i], a[n - i - 1]);
}
