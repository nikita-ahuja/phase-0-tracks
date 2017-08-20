def swap_name(real_name)
  name_array = real_name.split(" ")
  name_array[0], name_array[1] = name_array[1], name_array[0]
  #p name_array
end


def vowel_change(real_name)
  vowel = ["a", "e", "i", "o", "u"]
  real_name = real_name.chars
  real_name.map! do |letter|
    if letter == vowel
      letter.rotate(1)
    else
      letter
    end
  end
  p real_name
end

vowel_change("Nikita")


#   #index=0
#   #while index < vowels.length
#   #real_name.include? ("a") {|letter| p "real name has a" }
#   real_name.include? (vowels)
#   yield
#     #else
#       #p "real name does not have" + " " + (vowels[index])
#       #p real_name
#     #index += 1
#     #end
# end


# SWAP NAME PSEUDOCODE
# 1. Define a method that take the full real name
# 2. using the split function for strings, split the full name into an array with two indexes
#-real_name.split[0] == first name and [1] == last name
#- switch the two index values
#-done!


# VOWEL CHANGE PSEUDOCODE
#1. define a method that takes the full real name
#2. define a variable for vowels
#3. turn the real name into an array
#real_name.include?(vowel)


# CONSONANT CHANGE PSEUDOCODE