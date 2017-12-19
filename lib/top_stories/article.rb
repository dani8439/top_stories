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

  def self.current
    self.scrape_articles
  end

  def self.scrape_articles
    @doc = Nokogiri::HTML(open("http://www.pajiba.com/"))
    @doc.search("div#center").each do |story|
      article = TopStories::Article.new
      article.title = story.search("div.postdata a h4").text


      @@all << article
    end
    @@all
  end


end

# article_1 = self.new
# article_1.title = "What It Means To Be A Fan"
# article_1.author = "Kayleigh Donaldson"
# article_1.topic = "Think Pieces"
# article_1.comments = "Comments(0)"
# article_1.url = "http://www.pajiba.com/think_pieces/what-does-it-mean-to-be-a-fan.php"
#
# article_2 = self.new
# article_2.title = "Reddit Asks the Question: What's a Good 'Let That Sink in' Fun Fact"
# article_2.author = "Petr Knava"
# article_2.topic = "Reddit"
# article_2.comments = "Comments(6)"
# article_2.url = "http://www.pajiba.com/reddit/reddit-asks-the-question-whats-a-good-let-that-sink-in-fun-fact.php"
#
# article_3 = self.new
# article_3.title = "Twitter Crowdsourced The Best TV Lines from 2017"
# article_3.author = "Kristy Puchko"
# article_3.topic = "TV"
# article_3.comments = "Comments(13)"
# article_3.url = "http://www.pajiba.com/tv_reviews/what-are-the-best-tv-lines-from-2017.php"
#
# article_4 = self.new
# article_4.title = "Sh*tty Sports Men: Jerry Richardson, Marshall Faulk and (ugh) Many More"
# article_4.author = "Dan Hamamura"
# article_4.topic = "Celebrity"
# article_4.comments = "Comments(27)"
# article_4.url = "http://www.pajiba.com/celebrities_are_better_than_you/shtty-sports-men-jerry-richardson-marshall-faulk-and-ugh-many-more.php"
#
# article_5 = self.new
# article_5.title = "Disney's 'The Nutcracker and Four Realms' Looks More Like 'Alice Coraline in Narnia Oz'"
# article_5.author = "Jodi Smith"
# article_5.topic = "Trade News"
# article_5.comments = "Comments(28)"
# article_5.url = "http://www.pajiba.com/trade_news/disneys-the-nutcracker-and-the-four-realms-looks-more-like-alice-coraline-in-narnia-oz.php"
#
# article_6 = self.new
# article_6.title = "The 'Ocean's 8' Trailer is Here And We're Screaming"
# article_6.author = "Kristy Puchko"
# article_6.topic = "Trailers"
# article_6.comments = "Comments(189)"
# article_6.url = "http://www.pajiba.com/trailers/the-oceans-8-trailer-is-here-and-were-screaming.php"
#
# article_7 = self.new
# article_7.title = "Now What Dumbass Thing Did Matt Damon Say?"
# article_7.author = "Ursula Scully"
# article_7.topic = "Pajiba Love"
# article_7.comments = "Comments(207)"
# article_7.url = "http://www.pajiba.com/pajiba_love/now-what-dumbass-thing-did-matt-damon-say-.php"
#
# article_8 = self.new
# article_8.title = "Ugh, Not You Too, Ian McKellen"
# article_8.author = "Kayleigh Donaldson"
# article_8.topic = "Celebrity"
# article_8.comments = "Comments(78)"
# article_8.url = "http://www.pajiba.com/celebrities_are_better_than_you/ugh-not-you-too-ian-mckellen.php"
#
# article_9 = self.new
# article_9.title = "Meryl Streep Waited By Her Phone ALL DAY. Hoping Rose McGowan Would Call"
# article_9.author = "Tori Preston"
# article_9.topic = "Celebrity"
# article_9.comments = "Comments(25)"
# article_9.url = "http://www.pajiba.com/celebrities_are_better_than_you/meryl-streep-waited-by-her-phone-all-day-hoping-rose-mcgowan-would-call.php"
#
# article_10 = self.new
# article_10.title = "BREAKING: T.J. Miller Accused of Sexual Assault"
# article_10.author = "Tori Preston"
# article_10.topic = "Celebrity"
# article_10.comments = "Comments(141)"
# article_10.url = "http://www.pajiba.com/celebrities_are_better_than_you/breaking-tj-miller-accused-of-sexual-assault.php"
#
# [article_1, article_2, article_3, article_4, article_5, article_6, article_7, article_8, article_9, article_10]


# puts "1. What It Means To Be A Fan - Kayleigh Donaldson - Think Pieces - Comments(0)"
# puts "2. Reddit Asks the Question: What's a Good 'Let That Sink in' Fun Fact - Petr Knava - Reddit - Comments(6)"
# puts "3. Twitter Crowdsourced The Best TV Lines from 2017 - Kristy Puchko - TV - Comments(13)"
# puts "4. Sh*tty Sports Men: Jerry Richardson, Marshall Faulk and (ugh) Many More - Dan Hamamura - Celebrity - Comments(27)"
# puts "5. Disney's 'The Nutcracker and Four Realms' Looks More Like 'Alice Coraline in Narnia Oz' - Jodi Smith - Trade News - Comments(28)"
# puts "6. The 'Ocean's 8' Trailer is Here And We're Screaming - Kristy Puchko - Trailers - Comments(189)"
# puts "7. Now What Dumbass Thing Did Matt Damon Say? - Ursula Scully - Pajiba Love - Comments(207)"
# puts "8. Ugh, Not You Too, Ian McKellen - Kayleigh Donaldson - Celebrity - Comments(78)"
# puts "9. Meryl Streep Waited By Her Phone ALL DAY. Hoping Rose McGowan Would Call - Tori Preston - Celebrity - Comments(25)"
# puts "10. BREAKING: T.J. Miller Accused of Sexual Assault - Tori Preston - Celebrity - Comments(141)"
