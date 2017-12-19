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
  end

  def menu

    input = nil
    while input != "exit"
      puts "Enter the number of the article you would like to read more about, list to see articles again, or exit."
      input = gets.strip.downcase

      case input
      when "1"
        puts "More info on article 1"
      when "2"
        puts "More info on article 2"
      when "3"
        puts "More info on article 3"
      when "4"
        puts "More info on article 4"
      when "5"
        puts "More info on article 5"
      when "6"
        puts "More info on article 6"
      when "7"
        puts "More info on article 7"
      when "8"
        puts "More info on article 8"
      when "9"
        puts "More info on article 9"
      when "10"
        puts "More info on article 10"
      when "list"
        list_articles
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end

  def goodbye
    puts "See you later for the newest articles."
  end

end
