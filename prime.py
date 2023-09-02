#!/usr/bin/env python3

import math

N = 100

def isprime(n):
    r = math.sqrt(n)
    for i in range(2, int(r)+1):
        if n % i == 0:
            return False
    return True

for i in range(2, N):
    if isprime(i):
        print(i, end=' ')
print()

