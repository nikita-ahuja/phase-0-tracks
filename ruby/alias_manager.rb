def swap_name(real_name)
  real_name = real_name.split(" ")
  real_name[0], real_name[1] = real_name[1], real_name[0]
  #p name_array
  return real_name.join(" ")
end


def vowel_change(real_name)
  vowels = ["a", "e", "i", "o", "u"]
  real_name = real_name.downcase.chars
  real_name.map! do |letter|
    if vowels.include?(letter)
      letter = vowels.rotate[vowels.index(letter)]
      #rotate 1 to the right from the letter in the vowels array
    else
      letter = letter
    end
  end
  #p real_name.join
  return real_name.join
end

#vowel_change("Aikita")


def consonant_change(real_name)
  consonants = "bcdfghjklmnpqrstvwxyz"
  consonants = consonants.chars
  real_name = real_name.downcase.chars
  real_name.map! do |letter|
    if consonants.include?(letter)
      letter = consonants.rotate[consonants.index(letter)]
      #rotate 1 to the right from the letter in the vowels array
    else
      letter = letter
    end
  end
  #p real_name.join
  return real_name.join
end


def full_name_change(real_name)
  consonant_change(vowel_change(swap_name(real_name)))
end

p full_name_change("Felicia Torres")







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