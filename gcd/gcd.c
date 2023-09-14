#include <stdio.h>

int gcd(int a, int b) {
	return (a % b == 0) ? b : gcd(b, a % b);
}

int main() {
	int x[][2] = {{9,3}, {4,9}, {35,15}, {-1,-1}};

	for (int i = 0; x[i][0] != -1; i++) {
		int a, b, c;
		a = x[i][0];
		b = x[i][1];
		c = gcd(a, b);
		printf("gcd(%d, %d) = %d\n", a,b,c);
	}	

	return 0;
}
