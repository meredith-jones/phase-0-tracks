# MIXIN VERSION OF SHOUT MODULE:
module Shout

  def yell_angrily(words)
      words.upcase + "!!!" + " >:("
  end

  def yelling_happily(words)
      words + "!!!" + " <3 " + " :)"
  end

end

# Classes that need shout module:
class NewYorker
    include Shout
end

class Cheerleader
    include Shout
end

# DRIVER CODE:
new_yorker = NewYorker.new
puts new_yorker.yell_angrily("Fuhget about it")

cheerleader = Cheerleader.new
puts cheerleader.yelling_happily("Go team")


# #STANDALONE MODULE:

# module Shout

#   def self.yell_angrily(words)
#       words.upcase + "!!!" + " >:("
#   end

#   def self.yelling_happily(words)
#       words + "!!!" + " <3 " + " :)"
#   end

# end

# #DRIVER CODE for standalone module:
# puts Shout.yelling_happily("You're the best")
# puts Shout.yell_angrily("Eat a bag of dicks")