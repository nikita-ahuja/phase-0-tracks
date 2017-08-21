design_form = {}

puts "Enter client's name:"
name = gets.chomp
design_form[:name] = name

puts "Enter client's age:"
age = gets.chomp.to_i
design_form[:age] = age

puts "Enter the amount of children client has:"
children = gets.chomp.to_i
design_form[:children] = children

puts "Will the client be available on weekends? (y/n)"
weekend_availability = gets.chomp
if weekend_availability == "y"
  design_form[:weekend_availability] = true
else
  design_form[:weekend_availability] = false
end

puts "What is the client's favorite color?"
fav_color = gets.chomp
design_form[:fav_color] = fav_color

puts "How did the client hear about our services?"
reference = gets.chomp
design_form[:reference] = reference

puts design_form

puts "After reviewing the form, are there any values you would you like to update? If so, enter the key name, or enter 'none' if there are not any values you need to update."

update_key = gets.chomp

if update_key != "none"
  update_key = update_key.to_sym
  puts "What is the new or updated value for #{update_key}?"
  new_value = gets.chomp
  design_form[update_key] = new_value #same key that is already present in hash with a new value will update/overwite that key
  p design_form
else
  puts "Great, we are all done!"
  exit
end







# PSEUDOCODE:
# 1. Create an empty hash
# 2. Ask the user to fill out the answers to questions
# - each of these answers will be updated and added to the hash
# 3. Print the form back out to the user for review
# 4. Ask the user if there are any values they would like to update
# 5. If the user says "none", skip this part.
# -You are done.
# 6. If the user enters a key name, ask for a new value.
# 7. After the user enters the value, update the key with the new value.
# 8. Print the final version of the form
# 9. Exit the program.