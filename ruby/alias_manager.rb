def swap_name(real_name)
  real_name = real_name.split(" ")
  real_name[0], real_name[1] = real_name[1], real_name[0]
  return real_name.join(" ")
end


def vowel_change(real_name)
  vowels = ["a", "e", "i", "o", "u"]
  real_name = real_name.downcase.chars
  real_name.map! do |letter|
    if vowels.include?(letter)
      letter = vowels.rotate[vowels.index(letter)]
      #rotate 1 to the right from the letter in the vowels array
      #no argument in rotate method implies moving to the right 1 character
      #vowels.index(letter) finds the INDEX of the letter from real_name that is a vowel in the VOWEL ARRAY. Then, because of the rotate method, the index value moves to the right 1 in the VOWELS ARRAY to get the next letter in that array and replace it with the letter in real_name that is the vowel.
    else
      letter = letter
    end
  end
  return real_name.join
end


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
  return real_name.join.capitalize
end


def full_name_change()
  puts "Enter a name (type 'quit' to end):"
  real_name = gets.chomp
  alias_collector = []
  if real_name != "quit"
    alias_collector.push(real_name)
  end
  while real_name != "quit" do
      puts "The fake name is" + " " + consonant_change(vowel_change(swap_name(real_name)))
      puts "Enter a name (type quit to end):"
      real_name = gets.chomp
      if real_name != "quit"
        alias_collector.push(real_name)
      end
  end
  alias_collector.each {|name| puts "#{name} is also known as" + " " + consonant_change(vowel_change(swap_name(name))) + "."}
end

full_name_change()

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
#-cycle through each letter in the real name array and compare it with the vowels array to see if letter is a vowel
#-if a letter is a vowel, find where THAT SPECIFIC LETTER is in the VOWELS ARRAY (use indexes to compare), navigate to the next vowel in that list, and replace it with the original letter
#-do this for each letter in the name and create a permanant change
#-use the map! function in order to cycle through each letter and make the change


# CONSONANT CHANGE PSEUDOCODE
#1. repeat what was done to change vowels but for consonants
#- define a variable that lays out all consonants