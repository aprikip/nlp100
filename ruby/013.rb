#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

tweets = open( "../tweets" ).read.split( "<DELIMITER>" )
tweets.each_with_index do |t,i|
  next if t !~ /RT/
  comment, original = t.split( "RT", 2 )
  puts comment
end
