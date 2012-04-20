#!/usr/local/bin/ruby19
# -*- coding: utf-8 -*-

a = Array.new

STDIN.read.split( "\n" ).each do |r|
  a.push( r.split( "\t" )[0] )

# ここで文字列に
#   s += r.split( "\t" )[0] 
# のように直接足し込んでいくととても時間がかかる。

end

p a.join( "" ).split( "" ).uniq.size
