puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
birth_year = gets.chomp.to_i

puts "Our company serves garlic bread, should we order some for you? (y/n)"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance? (y/n)"
insurance = gets.chomp

current_year = 2017.to_i

if name == "Drake Cula" || name == "Tu Fang"
  puts "Definitely a vampire."
elsif (current_year - birth_year) == age && garlic_bread == "y"
    puts "Probably not a vampire."
elsif (current_year - birth_year) != age && garlic_bread == "n"
    puts "Probably a vampire."
elsif (current_year - birth_year) != age && garlic_bread == "n" && insurance == "n"
    puts "Almost certainly a vampire."
else
    print "Results inconclusive."
end

