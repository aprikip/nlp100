#!/usr/bin/env python

import sys

if (len(sys.argv) < 2):
    quit()

n = int(sys.argv[1])
print "\n".join(sys.stdin.read().split("\n")[0:n])
