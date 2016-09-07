module Shout

  def self.yell_angrily(words)
      words.upcase + "!!!" + " >:("
  end

  def self.yelling_happily(words)
      words + "!!!" + " <3 " + " :)"
  end

end

#DRIVER CODE:
puts Shout.yelling_happily("You're the best")
puts Shout.yell_angrily("Eat a bag of dicks")