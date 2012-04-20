#!/usr/bin/env python

import sys
import string

f1 = open("col1.txt", "w")
f2 = open("col2.txt", "w")

for line in sys.stdin:
    cols = line.split("\t")
    f1.write(cols[0] + "\n")
    f2.write(cols[1])
