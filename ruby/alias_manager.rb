def swap_name(real_name)
  name_array = real_name.split(" ")
  name_array[0], name_array[1] = name_array[1], name_array[0]
  #p name_array
end


def vowel_change(real_name)






#PSEUDOCODE
#1. define method that take a spy's full name
#2. swap first and last name
# - split the name into 2 by using the split method
# - swap the array values
#3. define another method that changes the vowels
#- split the name into characters in an array
#- using the each loop circulate through each letter and change it to the next vowel
#- join back the characters
#4. define another method that changes the consonants