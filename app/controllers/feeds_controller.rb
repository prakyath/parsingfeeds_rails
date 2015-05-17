class FeedsController < ApplicationController
	
def index

urls = %w[http://feedjira.com/blog/feed.xml https://github.com/feedjira/feedjira/feed.xml]
feeds =feeds = Feedjira::Feed.fetch_and_parse urls

feed = feeds['http://feedjira.com/blog/feed.xml']
feed.title   # => "The Feedjira Blog"
feed.url     # => "http://feedjira.com/blog/feed.xml"
feed.entries # returns an array of Entry objects
@entries=feed.entries
end
end
