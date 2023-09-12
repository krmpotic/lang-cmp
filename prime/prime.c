#include <math.h>
#include <stdio.h>

#define N 101

int isprime(int n)
{
    int r = sqrt((double)n);

    for (int i = 2; i <= r; i++) {
        if (n%i == 0) {
            return 0;
        }
    }
    return 1;
}

int main()
{
    for (int i = 2; i < N; i++) {
        if (isprime(i)) {
            printf("%d ", i);
        }
    }
    printf("\n");
}
