# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array using #each,
# printing each item in the array separated by an asterisk
# ----
zombie_apocalypse_supplies.each do |supplies|
  #print "#{supplies} *" + " "
end

# 2. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies using #each.
# For instance: are boots in your list of supplies?
# ----
zombie_apocalypse_supplies.each do |supplies|
#p zombie_apocalypse_supplies.include?("boots") #do |supplies|
  p supplies.include?("boots")
end

# 3. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5, using #each.
# ----
# delete if index is greater than 4
zombie_apocalypse_supplies.delete_if do |supplies|
  zombie_apocalypse_supplies.index(supplies) > 4
end

#p zombie_apocalypse_supplies

# 4. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies and their supplies below. You should get rid of any duplicate items.

# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----

combined_supplies = []
combined_supplies = zombie_apocalypse_supplies.concat(other_survivor_supplies)
combined_supplies.uniq!
#p combined_supplies

# Hash Drills

extinct_animals = {
  "Passenger Pigeon" => 1914,
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash using #each, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
extinct_animals.each do |animal, extinction_date|
  # print "#{animal} - #{extinction_date} *" + " "
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000, using #each.
# ----
new_extinct = extinct_animals.keep_if do |animal, extinction_date|
  extinction_date < 2000
end

new_extinct = extinct_animals.each do |animal, extinction_date|
  if extinction_date > 2000
    extinct_animals.delete(animal)
  end
end

p new_extinct






# p extinct_animals
# p "----------------"
# p new_extinct

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# using #each, so they accurately reflect what year the animal went extinct.
# ----
extinct_animals.each do |animals, extinction_date|
  new_date = extinction_date.to_i - 3
  extinct_animals[animals] = new_date
  extinct_animals
end

# p extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Build a method  using #each that checks if an animal is in the hash and returns true/false.
# Call the method in your driver code with each of the following animals to check if
# they are extinct or not:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Driver code example: is_extinct?(extinct_animals, "Andean Cat")
# ----

def is_extinct?(extinct_animals, animal)
  extinct_animals.each do #|extinct_animals, animal|
    return extinct_animals.include?(animal)
  end
end

p is_extinct?(extinct_animals, "Andean Cat")
p is_extinct?(extinct_animals, "Dodo")
p is_extinct?(extinct_animals, "Saiga Antelope")



# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find a Ruby Hash built-in method that helps you accomplish this or build your own method using #each
# ----

extinct_animals.shift

# p extinct_animals
