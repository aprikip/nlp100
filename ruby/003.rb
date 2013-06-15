#!/usr/bin/env ruby
#

f1 = open( "col1.txt", "w" )
f2 = open( "col2.txt", "w" )

STDIN.read.split( "\n" ).each do |r|
  c = r.split( "\t" )
  f1.puts( c[0] )
  f2.puts( c[1] )
end
