#!/usr/local/bin/ruby19
# -*- coding: utf-8 -*-

require "csv"

CSV.new( STDIN,  :row_sep => "\r\n" ).each do |row|
  s1 = row[6] + row[7]
  s2 = row[8]
  next if s2 == "以下に掲載がない場合"
  s2.split( "、" ).each do |s2s|
    begin
      s2s[ /（.*/ ] = ""
    rescue IndexError
    end
    print "#{s1}\t#{s2s}\n"
  end
end
