class Santa
  attr_reader :age, :ethnicity, :reindeer_ranking
  attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good type of #{cookie_type}!"
  end

  def celebrate_birthday()
   @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.insert(-1, reindeer_name)
  end

end

# DRIVER CODE:
santa = Santa.new("Male", "Latino")
Santa.new("Male", "Latino").eat_milk_and_cookies("Oreo")


santas = []

# EXAMPLE INITIALIZATIONS
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

# MORE INITIALIZATIONS

santas << Santa.new("female", "Latina")

10.times do
  puts "Creating a new agender, black Santa."
  santas << Santa.new("agender","black")
end

# p santas.length

gal_santa = Santa.new("female", "Black")

gal_santa.get_mad_at("Dancer")
puts gal_santa.reindeer_ranking
puts gal_santa.celebrate_birthday()
gal_santa.age
puts gal_santa.ethnicity
gal_santa.celebrate_birthday()
puts gal_santa.age
puts gal_santa.gender


p santas[0]
santas[0].gender = "male"
p santas[0].gender
p santas[0].age
santas[0].celebrate_birthday





