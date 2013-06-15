#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

tweets = open( "../tweets" ).read.split( "<DELIMITER>" )
tweets.each do |t|
  puts t if t =~ /拡散希望/
end
