
class Santa

  attr_reader :age, :ethnicity #getters

  attr_accessor :gender #getter & setter

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def tell_demographic
      puts "Hi, my gender is #{@gender} and my ethnicity is #{@ethnicity}"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end


#attribute-changing methods:
  def celebrate_birthday
    @age += 1
    puts "Santa is #{@age} now!"
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
    p @reindeer_ranking
  end

end


#DRIVER CODE
santah = Santa.new("male", "Italian")
santah.speak
santah.celebrate_birthday
santah.celebrate_birthday
santah.get_mad_at("Prancer")
santah.get_mad_at("Dasher")
santah.gender=("female")


clause = Santa.new("female", "Chinese")
clause.eat_milk_and_cookies("Oatmeal Raisin")

#create array of santa instances
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

#loop through and print the santas
puts "Iterating through Santas..."
santas.each do |santa|
  puts santa.tell_demographic
end

