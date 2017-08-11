puts "How many users will be processed?"
users = gets.chomp.to_i

CURRENT_YEAR = 2017.to_i #constant

i = 0 # initially, we begin at 0 iterations

until i == users

  puts "Survey for Employee number #{i + 1}"

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

if name == "Drake Cula" || name == "Tu Fang"
  puts "Definitely a vampire."
elsif (CURRENT_YEAR - birth_year) == age && garlic_bread == "y"
    puts "Probably not a vampire."
elsif (CURRENT_YEAR - birth_year) != age && garlic_bread == "n"
    puts "Probably a vampire."
elsif (CURRENT_YEAR - birth_year) != age && garlic_bread == "n" && insurance == "n"
    puts "Almost certainly a vampire."
else
    puts "Results inconclusive."
end #end the if statement

i += 1 #increase iteration by 1
end #end the until loop

# PSEUDOCODE FOR LOOP:
# Ask how many users will be processed - done
# Run through the whole survey - done
# Print the results for survey - done
# ITERATE this process until all employees have completed the survey and results have been returned for each employee
# end the loop
