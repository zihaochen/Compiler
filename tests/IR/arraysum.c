#include<stdio.h>
#include <stdlib.h>


struct dd {
	int a[2][2];
}a, b;

void print(struct dd node1, struct dd node2) {
	printf("%d  %d\n", node1.a[0][0], node1.a[1][0]);
	printf("%d  %d\n", node2.a[0][0], node2.a[1][0]);
}

struct dd f(struct dd node) {
	node.a[1][0] = 123;
	return node;
}
struct dd g(struct dd node) {
	node.a[0][0] = 123;
	return node;
}
int main(){
	a.a[0][0] = 1;
	a.a[1][0] = 2;
	print(g(a), f(a));
}
