class TopStories::Article
  attr_accessor :title, :author, :topic, :comments, :url
  @@all = []

  def self.all
    @@all
  end

  def initialize(title = nil, author = nil, topic = nil, comments = nil, url = nil)
    @title = title
    @author = author
    @topic = topic
    @comments = comments
    @url = url
    @@all << self
  end


end
