def name_swap(real_name)
  name_array = real_name.split(" ")
  name_array[0], name_array[1] = name_array[1], name_array[0]
  p name_array
end



name_swap("Felicia Torres")





#PSEUDOCODE
#1. define method that take a spy's full name
#2. swap first and last name
# - split the name into 2 by using the split method
# - swap the array values
#3. define another method