class TopStories::CLI

  def call
    puts "Welcome to Top Stories!"
    puts "-----------------------"
    sleep(1)
    puts "Here are the most current articles presently up on Pajiba's Homepage:"
    puts ""
    list_articles
  end

  def list_articles
    puts "1. The 'Ocean's 8' Trailer is Here And We're Screaming - Kristy Puchko - Trailers - Comments(189)"
    puts "2. Reddit Asks the Question: What's a Good 'Let That Sink in' Fun Fact - Petr Knava - Reddit - Comments(6)"
    puts "3. Twitter Crowdsourced The Best TV Lines from 2017 - Kristy Puchko - TV - Comments(13)"
    puts "4. Sh*tty Sports Men: Jerry Richardson, Marshall Faulk and (ugh) Many More - Dan Hamamura - Celebrity - Comments(27)"
    puts "5. Disney's 'The Nutcracker and Four Realms' Looks More Like 'Alice Coraline in Narnia Oz' - Jodi Smith - Trade News - Comments(28)"
    puts "6. Now What Dumbass Thing Did Matt Damon Say? - Ursula Scully - Pajiba Love - Comments(207)"
    puts "7. Goddamn It, Matt Damon (A 'Downsizing' Review) - Kristy Puchko - Movie Reviews - Comments(120)"
    puts "8. Ugh, Not You Too, Ian McKellen - Kayleigh Donaldson - Celebrity - Comments(78)"
    puts "9. Meryl Streep Waited By Her Phone ALL DAY. Hoping Rose McGowan Would Call - Tori Preston - Celebrity - Comments(25)"
    puts "10. BREAKING: T.J. Miller Accused of Sexual Assault - Tori Preston - Celebrity - Comments(141)"

  end

end
