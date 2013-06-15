#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

freq = Hash.new( 0 )
open( "col2.txt", "r" ).read.split( "\n" ).each do |w|
  freq[ w ] += 1
end

freq.sort{ |a,b| a[1] <=> b[1] }.reverse.each do |w,f|
  print "#{w}\t#{f}\n"
end

# Hash::sort{ |a,b|  ... } 
#  ハッシュを [ [ key, value ], [ key, value ], ... ]
#  の配列としてソートする。
