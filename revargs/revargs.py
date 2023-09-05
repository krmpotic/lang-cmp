#!/usr/bin/env python

import sys
for a in sys.argv[:0:-1]:
    print(a, end=" ")
if len(sys.argv) > 0:
    print()
