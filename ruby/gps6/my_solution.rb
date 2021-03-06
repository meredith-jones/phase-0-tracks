# Virus Predictor

# I worked on this challenge with: Sierra Mclawhorn.
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative:
# require_relative allows you access another file within the same directory
# require differs because the file would not be in the same directory

require_relative 'state_data'

class VirusPredictor

  # Initializes when a new instance of a class is created & the place where instance variables are initiated
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls the following methods: predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private

  # Calculates the predicted deaths based on population_density, population, and state & prints a message with those details
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

#Attempting another solution:
#     if @population_density < 50
#       number_of_deaths = (@population * 0.05).floor
#     elsif @population_density > 200
#       number_of_deaths = (@population * 0.04).floor
#     else
#       multiplier = (@population_density/50 * 0.1)
#       number_of_deaths = (@population * multiplier).floor
# end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Calculates how fast a disease will spread given the population_density and state & prints a message with those details
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    speed += 0.5 if @population_density >= 200
    speed += 1 if @population_density >= 150
    speed += 1.5 if @population_density >= 100
    speed += 2 if @population_density >= 50
    speed += 2.5 if @population_density < 50

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do | state, demographics |
  state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file? One is a string, the other is a symbol. I'm guessing that the first uses a string because it is going to be printed, and will look better than a symbol.
# What does require_relative do? How is it different from require? Require relative makes available code from another file within the same directory, whereas reqiure makes code available from a file -not- within the same directory.
# What are some ways to iterate through a hash? We ended up using .each to iterate through the hash. You can also use a loop, such as a while loop.
# When refactoring virus_effects, what stood out to you about the variables, if anything? Because they were instance variables, they were available without having to enter them as parameters.
# What concept did you most solidify in this challenge? Probably the concept of instance variables, and how they can be passed throughout an instance. Also, we experimented a bit with require, and adding things into the file being required, and testing them to see if they work. This helped solidify the concept of require.