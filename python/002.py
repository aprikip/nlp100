#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import string

for line in sys.stdin:
    print line.replace( "\t", " " ),
