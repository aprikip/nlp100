#!/usr/local/bin/ruby19

r = Array.new
r[0] = open( "col1.txt", "r" ).read.split( "\n" )
r[1] = open( "col2.txt", "r" ).read.split( "\n" )

r[0].size.times do |i|
  print "#{r[0][i]}\t#{r[1][i]}\n"
end

#r[0].zip( r[1] ).each do |a,b|
#  print "#{a}\t#{b}\n"
#end

# Those two methods seem to be almost same.
