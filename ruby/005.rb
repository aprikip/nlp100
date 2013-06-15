#!/usr/bin/env ruby
#

exit if ARGV.size < 1
n = ARGV[0].to_i
print STDIN.read.split( "\n" )[ 0...n ].join( "\n" )
print "\n"

