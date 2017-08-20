puts "What is the hamster's name?"
name = gets.chomp
puts "Hamster's name is #{name}."

puts "What is the hamster's volume level from 1-10?"
volume_level = gets.chomp.to_i
puts "Hamster's name is #{volume_level}."

puts "What is the hamster's fur color?"
fur_color = gets.chomp
puts "Hamster's fur color is #{fur_color}"

valid_input = false

until valid_input
#until has to be ended

puts "Is hamster a good candidate for adoption? (y/n)"
input = gets.chomp

if input == "y"
  good_candidate = true
  valid_input = true
  puts "Hamster is a good candidate for adoption."
elsif input == "n"
  good_candidate = false
  valid_input = true
  puts "Hamster is not a good candidate for adoption."
else
  puts "Please enter y/n as a response."
end #ending conditional statement

end #ending until loop

puts "What is the hamster's estimated age?"
estimated_age = nil
puts "Hamster's estimated age is #{estimated_age}."


