#!/usr/local/bin/ruby19
# -*- coding: utf-8 -*-

a = Array.new
STDIN.read.split( "\n" ).each do |r|
  a.push( r.split( "\t" ) )
end

a.sort{ |x,y|
  if( x[1] == y[1] ) then
    x[0] <=> y[0]
  else 
    x[1] <=> y[1]
  end
}.each do |r|
  print "#{r[0]}\t#{r[1]}\n"
end




