
class Santa

  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  @age = 0

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

end


#DRIVER CODE
santah = Santa.new
santah.speak

clause = Santa.new
clause.eat_milk_and_cookies("Oatmeal Raisin")




#Reindeer example
#instance variable has @ sign in front of it

# class Reindeer
#   def initialize(name)
#     @name = name
#     @location = "The North Pole"
#   end

#   def take_off(altitude)
#     puts "#{@name} took off."
#     puts "#{@name} ascended to #{altitude} feet."
#   end

#   def land(location)
#     puts "Landed safely in #{location}."
#     @location = location
#   end

#   def about
#     puts "Name: #{@name}"
#     puts "Location: #{@location}"
#   end

# end

# reindeer = Reindeer.new("Blitzen")
# reindeer.take_off(3000)
# reindeer.about
# reindeer.land("Bombay")
# reindeer.about