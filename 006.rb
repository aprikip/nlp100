#!/usr/local/bin/ruby19

exit if ARGV.size < 1
n = ARGV[0].to_i
print STDIN.read.split( "\n" ).reverse[ 0...n ].reverse.join( "\n" )
# maybe this line costs much.
print "\n"

