#!/usr/local/bin/ruby19

# look => http://mitsumasa.tumblr.com/post/18489222979/tweet-stream

require "json"
require "tweetstream"
require "eventmachine"
require "sequel"

@db = Sequel.connect( "sqlite://tweets.db" )

TweetStream.configure do |config|
  config.username = USERNAME
  config.password = PASSWORD
  config.auth_method = :basic
  config.parser   = :yajl
end

EM.run do
  client = TweetStream::Client.new

  def write_down( status )
    EM.defer do
      item = {
        :text => status.text
      }
      @db[ :tweets ]<< item
      exit if @db[ :tweets ].count >= 10000
    end
  end

  client.sample do |status|
    write_down( status ) if status.user.lang == "ja"
  end

end

