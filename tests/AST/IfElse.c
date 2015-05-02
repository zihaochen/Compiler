//#include<stdio.h>
int main()
{
	int a = 5, b = 6, c = 7;
	if (a < b)
		if (b > c)
			a = b;
		else
			printf("RIGHT\n");
}