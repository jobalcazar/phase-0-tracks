# Virus Predictor

# I worked on this challenge [by myself, with: Gloria Nlewedim].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#Allows us to read the data within the state_data file, all under the same folder
#If we were to use require, then we can make out own path to find the data, or
#set a larger folder as where you receive folder

require_relative 'state_data'

class VirusPredictor

#initializes the class, given an intial set of parameters, which will be used
#throughout our class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#Method solely repsonsible in calling other methods of the same class.
  def virus_effects
    predicted_deaths(@population_density, @population)
    speed_of_spread(@population_density)
  end

  private

#Calculates the amount of deaths that will occur given a state's population density
  def predicted_deaths(population_density, population)
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

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#Calculates the amout of time in months it will take for virus to spread
#throughout state
  def speed_of_spread(population_density) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
#
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
#
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
#
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |key, value|
  state=VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
  state.virus_effects
end
#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
#     The difference is found in the use of addressing the value whether is through => or a colon:.
# What does require_relative do? How is it different from require?
#    Allows us to read the data within the state_data file, all under the same folder
#   If we were to use require, then we can make out own path to find the data, or
#   set a larger folder as where you receive folder
# What are some ways to iterate through a hash?
  # you can iterate through a list using a .each method and using the key and
  #value variables to acccess the key and value of each element
# When refactoring virus_effects, what stood out to you about the variables, if anything?
#   The variables that were not being used
# What concept did you most solidify in this challenge?
#   The use of require reltive was clarified.
