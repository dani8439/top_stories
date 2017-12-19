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
    puts "1. What It Means To Be A Fan - Kayleigh Donaldson - Think Pieces - Comments(0)"
    puts "2. Reddit Asks the Question: What's a Good 'Let That Sink in' Fun Fact - Petr Knava - Reddit - Comments(6)"
    puts "3. Twitter Crowdsourced The Best TV Lines from 2017 - Kristy Puchko - TV - Comments(13)"
    puts "4. Sh*tty Sports Men: Jerry Richardson, Marshall Faulk and (ugh) Many More - Dan Hamamura - Celebrity - Comments(27)"
    puts "5. Disney's 'The Nutcracker and Four Realms' Looks More Like 'Alice Coraline in Narnia Oz' - Jodi Smith - Trade News - Comments(28)"
    puts "6. The 'Ocean's 8' Trailer is Here And We're Screaming - Kristy Puchko - Trailers - Comments(189)"
    puts "7. Now What Dumbass Thing Did Matt Damon Say? - Ursula Scully - Pajiba Love - Comments(207)"
    puts "8. Ugh, Not You Too, Ian McKellen - Kayleigh Donaldson - Celebrity - Comments(78)"
    puts "9. Meryl Streep Waited By Her Phone ALL DAY. Hoping Rose McGowan Would Call - Tori Preston - Celebrity - Comments(25)"
    puts "10. BREAKING: T.J. Miller Accused of Sexual Assault - Tori Preston - Celebrity - Comments(141)"

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
