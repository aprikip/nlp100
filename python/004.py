#!/usr/bin/env python

import sys
import string

col1 = open("col1.txt", "Ur").read().split("\n")
col2 = open("col2.txt", "Ur").read().split("\n")

for i, r in enumerate(col1):
    print r, "\t", col2[i]
