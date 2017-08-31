# Virus Predictor

# I worked on this challenge [by myself, with: Catherine V. ].
# We spent [1.5] hours on this challenge.


# EXPLANATION OF require_relative
# require_relative allows us to access a file in the same
# directory without having to copy the direct code
# require looks through ruby gems to see if a certain library is present
require_relative 'state_data'

class VirusPredictor

# assigns attributes of state, population, and population density to an instance of VirusPredictor
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# private

# calls predicted_deaths and speed_of_spread methods below
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

 private
 #You will not be able to call the predicted_deaths of speed_of)spread methods on an instane of VirusPredictor because they are under the private method and considered private methods.

# takes pop., pop. density, and state as arguments and compares them against certain thresholds and generates a number of deaths
  def predicted_deaths
    if @population_density >= 200
      x = 0.4
    elsif @population_density >= 150
      x = 0.3
    elsif @population_density >= 100
      x = 0.2
    elsif @population_density >= 50
      x = 0.1
    else
      x = 0.05
    end
    number_of_deaths = (@population_density * x).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end


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

  # generates speed of spread of disease based on certain population densities
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects
#alabama.predicted_deaths

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, data|
  current_state = VirusPredictor.new(state, data[:population_density], data[:population])
  current_state.virus_effects
end



#=======================================================================
# Reflection Section