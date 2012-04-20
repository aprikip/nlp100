#!/usr/local/bin/ruby19

p open( "col1.txt" ).read.tr( "\n", "" ).split( "" ).uniq.size

