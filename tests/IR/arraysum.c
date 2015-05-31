#include<stdio.h>
#include <stdlib.h>

int read() {
	char ch = getchar();
	int x;
	while (ch < '0' || ch > '9')
		ch = getchar();
	x = ch - '0';
	return x;
}

int main() {
	int a = read();
	int b = read();
	printf("a = %d, b = %d\n", a, b);
}
