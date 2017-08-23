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

end



#DRIVER CODE:

puppy = Puppy.new()
puppy.fetch("Gorilla toy")
puppy.speak(3)

