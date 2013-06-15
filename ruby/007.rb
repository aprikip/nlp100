#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

a = Array.new

STDIN.read.split( "\n" ).each do |r|
  a.push( r.split( "\t" )[0] )

# ここで文字列に
#   s += r.split( "\t" )[0] 
# のように直接足し込んでいくととても時間がかかる。
#
# 上記は「異なり文字」を検出するコードと勘違いした時のもの :)

end

p a.uniq.size
