# Virus Predictor

# I worked on this challenge with: Tife.
# We spent 1 hour on this challenge.

# EXPLANATION OF require_relative
# Allows the program to access external ruby file and import it into the current file.
# Require_relative looks within the same directory/folder for the file. Require looks in the designated area for modules, etc. for your Ruby implementation.
require_relative 'state_data'

class VirusPredictor

  # Initializes a new VirusPredictor object for a given state.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls private methods predicted_deaths and speed_of_spread for the object
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  # Makes the following code private to this object
  private

  # Categorizes the scale of death based on population density and computes it, and then makes a print statement to display to user.
  def predicted_deaths()
    # predicted deaths is solely based on population density

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    # refactored above
    scale = (@population_density / 50).floor / 10.0
    scale = 0.4 if scale > 0.4
    scale = 0.05 if scale < 0.05
    number_of_deaths = (@population * scale).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Categorizes the speed of spread based on population density, and then prints that in a sentence fragment.
  def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    # speed = 0.0
    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    # refactored above
    speed = (25.0 - ((@population_density / 10.0) - ((@population_density/10) % 5)).floor) / 10.0
    speed = 2.5 if @population_density < 50
    speed = 0.5 if @population_density > 200

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

viruspredictors = []

STATE_DATA.each do |state_name, state_info|
  viruspredictors << VirusPredictor.new(state_name, state_info[:population_density], state_info[:population])
  viruspredictors.last.virus_effects
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# One uses a string as the key (the outer hash, with keys as strings of state names) and the other uses symbols for :population_density and :population.

# What does require_relative do? How is it different from require?
# Allows the program to access external ruby file and import it into the current file.
# Require_relative looks within the same directory/folder for the file. Require looks in the designated area for modules, etc. for your Ruby implementation.

# What are some ways to iterate through a hash?
# You can iterate through using any number of methods from the Enumerable module: each, map, inject, etc. Some of these return arrays, though, so watch out.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# They were duplicates of the instance variables that were already contained within the method, so they weren't necessary. They would already be accessible within the other methods that were called within virus_effects.

# What concept did you most solidify in this challenge?
# This pairing really synced for me a sense of how you can use data structures from external sources and create methods that would work with those structures. I think that will be very useful when we start getting into databases.
