/**This file use massive recursive expression to test: Common Expression substitution.
 * For my optimized version: 	All:	1397	Load:	86	Store:	55	Jumped:	23
 * For my unoptimized version:	All:	24519	Load:	12183	Store:	55	Jumped:	23
 * A better result is welcomed.
 * ------ From JinTianxing.
 */
#include <stdio.h>
int A = 1, B = 1, C = 1, i;
int main(){
	while (C < (1 << 29) && C > -(1 << 29)){
		A = ((((((((C - A + B) - (A + B)) + ((C - A + B) - (A + B))) + (((C - A + B) - (A + B)) + (C - A + B))) - ((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B)))) - (((((A + B) + (C - A + B)) - ((A + B) + (C - A + B))) - (((A + B) + (C - A + B)) - (A + B))) + ((((C - A + B) - (A + B)) + (C - A + B)) - (((A + B) + (C - A + B)) - (A + B))))) + ((((((C - A + B) - (A + B)) + ((C - A + B) - (A + B))) + (((C - A + B) - (A + B)) + (C - A + B))) - ((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B)))) - (((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B))) - ((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B)))))) - (((((((A + B) + (C - A + B)) - ((A + B) + (C - A + B))) - (((A + B) + (C - A + B)) - (A + B))) + ((((C - A + B) - (A + B)) + (C - A + B)) - (((A + B) + (C - A + B)) - (A + B)))) + (((((C - A + B) - (A + B)) + (C - A + B)) - (((A + B) + (C - A + B)) - (A + B))) + ((((C - A + B) - (A + B)) + (C - A + B)) - (((A + B) + (C - A + B)) - (A + B))))) + ((((((C - A + B) - (A + B)) + ((C - A + B) - (A + B))) + (((C - A + B) - (A + B)) + (C - A + B))) - ((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B)))) - (((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B))) - ((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B)))))));
		B = ((((((((C - A + B) - (A + B)) + ((C - A + B) - (A + B))) + (((C - A + B) - (A + B)) + (C - A + B))) - ((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B)))) - (((((A + B) + (C - A + B)) - ((A + B) + (C - A + B))) - (((A + B) + (C - A + B)) - (A + B))) + ((((C - A + B) - (A + B)) + (C - A + B)) - (((A + B) + (C - A + B)) - (A + B))))) + ((((((C - A + B) - (A + B)) + ((C - A + B) - (A + B))) + (((C - A + B) - (A + B)) + (C - A + B))) - ((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B)))) - (((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B))) - ((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B)))))) - (((((((A + B) + (C - A + B)) - ((A + B) + (C - A + B))) - (((A + B) + (C - A + B)) - (A + B))) + ((((C - A + B) - (A + B)) + (C - A + B)) - (((A + B) + (C - A + B)) - (A + B)))) + (((((C - A + B) - (A + B)) + (C - A + B)) - (((A + B) + (C - A + B)) - (A + B))) + ((((C - A + B) - (A + B)) + (C - A + B)) - (((A + B) + (C - A + B)) - (A + B))))) + ((((((C - A + B) - (A + B)) + ((C - A + B) - (A + B))) + (((C - A + B) - (A + B)) + (C - A + B))) - ((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B)))) - (((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B))) - ((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B)))))));
		C = ((((((((C - A + B) - (A + B)) + ((C - A + B) - (A + B))) + (((C - A + B) - (A + B)) + (C - A + B))) - ((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B)))) - (((((A + B) + (C - A + B)) - ((A + B) + (C - A + B))) - (((A + B) + (C - A + B)) - (A + B))) + ((((C - A + B) - (A + B)) + (C - A + B)) - (((A + B) + (C - A + B)) - (A + B))))) + ((((((C - A + B) - (A + B)) + ((C - A + B) - (A + B))) + (((C - A + B) - (A + B)) + (C - A + B))) - ((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B)))) - (((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B))) - ((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B)))))) - (((((((A + B) + (C - A + B)) - ((A + B) + (C - A + B))) - (((A + B) + (C - A + B)) - (A + B))) + ((((C - A + B) - (A + B)) + (C - A + B)) - (((A + B) + (C - A + B)) - (A + B)))) + (((((C - A + B) - (A + B)) + (C - A + B)) - (((A + B) + (C - A + B)) - (A + B))) + ((((C - A + B) - (A + B)) + (C - A + B)) - (((A + B) + (C - A + B)) - (A + B))))) + ((((((C - A + B) - (A + B)) + ((C - A + B) - (A + B))) + (((C - A + B) - (A + B)) + (C - A + B))) - ((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B)))) - (((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B))) - ((((A + B) + (C - A + B)) - (A + B)) + (((C - A + B) - (A + B)) + (C - A + B)))))));
	printf("%d %d %d\n", A, B, C);
}
	printf("%d %d %d\n", A, B, C);
	return 0;
}
