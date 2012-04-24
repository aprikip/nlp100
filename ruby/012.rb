#!/usr/local/bin/ruby19
# -*- coding: utf-8 -*-

tweets = open( "../tweets" ).read.split( "<DELIMITER>" )
tweets.each do |t|
  puts t if t =~ /なう$/
end
