class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    integer.times do
      puts "Woof!"
    end
  end

  def roll_over()
    puts "*rolls over*"
  end

  def dog_years(human_years)
    dog_years = human_years/7
    return dog_years
  end

  def do_flips(amount_of_flips)
    amount_of_flips.times do |i|
      puts "The dog flips #{i} times!"
    end
  end

end



#DRIVER CODE:

puppy = Puppy.new()
puppy.fetch("Gorilla toy")
puppy.speak(3)
puppy.roll_over
p puppy.dog_years(21)
puppy.do_flips(3)

