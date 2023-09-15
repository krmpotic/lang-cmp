#!/usr/bin/env python

def gcd(a, b):
    return a if b == 0 else gcd(b, a%b)

print(gcd(105, 20055))
