puts "What is the hamster's name?"
name = gets.chomp

puts "What is the hamster's volume level from 1-10?"
volume_level = gets.chomp.to_i

puts "What is the hamster's fur color?"
fur_color = gets.chomp


valid_input = false

until valid_input
#until has to be ended

puts "Is hamster a good candidate for adoption? (y/n)"
input = gets.chomp

if input == "y"
  good_candidate = true
  valid_input = true
elsif input == "n"
  good_candidate = false
  valid_input = true
else
  puts "Please enter y/n as a response."
end #ending conditional statement

end #ending until loop

puts "What is the hamster's estimated age?"
estimated_age = nil


