
class Santa

  attr_accessor :gender, :ethnicity, :age #getter & setter. *Took out attr_reader because ended up using attr_accessor on all (which reads and writes).*

  def initialize(gender, ethnicity, age)
    @gender = gender
    @ethnicity = ethnicity
    @age = age
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def about
      puts "Age: #{@age} years old"
      puts "Ethnicity: #{@ethnicity}"
      puts "Gender: #{@gender} "
      puts "*********************************"
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

# method to create many santas:
def create_many_santas
  100.times do
    santa = Santa.new(pick_gender, pick_ethnicity, generate_age)
    santa.about
  end

end

# method to randomly pick gender
def pick_gender
  example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
  return example_genders[rand(example_genders.length)]
end

# method to randomly pick ethnicity
def pick_ethnicity
  example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
  return example_ethnicities[rand(example_ethnicities.length)]
end

# method to generate random age between 1-140
def generate_age
  return rand(140)
end

# call method in instantiate many santas:
create_many_santas



#CREATE ARRAY OF SANTA INSTANCES from release 1:
# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

#loop through and print the santas
# puts "Iterating through Santas..."
# santas.each do |santa|
#   puts santa.about
# end


#DRIVER CODE from previous release:
# santah = Santa.new("male", "Italian")
# santah.speak
# santah.celebrate_birthday
# santah.celebrate_birthday
# santah.get_mad_at("Prancer")
# santah.get_mad_at("Dasher")
# santah.gender=("female")


# clause = Santa.new("female", "Chinese")
# clause.eat_milk_and_cookies("Oatmeal Raisin")