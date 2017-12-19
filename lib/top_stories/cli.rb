class TopStories::CLI

  def call
    puts "Welcome to Top Stories!"
    puts "-----------------------"
    sleep(1)
    puts "Here are the newest and most popular articles presently up on Pajiba's Homepage:"
    sleep(1)
    puts ""
    list_articles
    puts ""
    menu
    goodbye
  end

  def list_articles
    @articles = TopStories::Article.current
    @articles.each.with_index(1) do |story, i|
      puts "#{i}. #{story.title} - #{story.author}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the article you would like to read more about, list to see articles again, or exit."
      input = gets.strip.downcase

      if input.to_i > 0
        the_story = @articles[input.to_i-1]
        puts ""
        puts "#{the_story.title}: #{the_story.author}, Topic: #{the_story.topic} - #{the_story.comments} - To Read Click Here:#{the_story.url}"
        puts ""
      elsif input == "list"
        list_articles
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end

  def goodbye
    puts "See you later for the latest gossip & news."
  end

end
