def swap_name(real_name)
  name_array = real_name.split(" ")
  name_array[0], name_array[1] = name_array[1], name_array[0]
  #p name_array
end


def vowel_change(real_name)
  vowel = "aeiou"
  real_name = real_name.chars
  real_name.map! do |letter|
    #letter.each
    vowel.index(real_name[letter]) != nil
      #letter = vowel[index+1]
      p letter
    end
end
  #p real_name
   #now run something
   #join back the characters
    #something in regards to nil... refer to robot translator code
#end

#vowel_change { |letter| letter.map! puts real_name }

#vowel_change("Nikita")


# def consonant_change(real_name)
#   vowels = "aeiou"
#   i=0
#   real_name.chars
# end


  #real_name = "nikita"
#   def vowel_change(real_name)
#     vowel = "aeiou"
#     vowel=vowel.chars
#     real_name = real_name.chars
#     index = 0
#     while index < real_name.join.length
#       if vowel.index(real_name[index]) != nil
#         real_name[index] = vowel[index+1]
#       else
#         index += 1
#       end
#     end
#     p real_name.join
#   end

# vowel_change("nikita")







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