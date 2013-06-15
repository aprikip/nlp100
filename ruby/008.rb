#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

a = Array.new
STDIN.read.split( "\n" ).each do |r|
  a.push( r.split( "\t" ) )
end

a.sort{ |x,y| x[1] <=> y[1] }.each do |r|
  print "#{r[0]}\t#{r[1]}\n"
end

