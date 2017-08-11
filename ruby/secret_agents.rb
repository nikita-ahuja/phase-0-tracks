# Pseudocode the following method:

# An encrypt method that advances every letter of a string one letter forward. So "abc" would become "bcd". For now, you can assume lowercase input and output. Any space character should remain a space character -- no change made.


def encrypt(string)
# prompt the user to type a string
puts "Please type a string"

index = 0
string = gets.chomp

# move each character forward one
# loop through each individual character
while index < string.length
  # using the "next" function
  string[index] = string[index].next
  index += 1
end

puts string

end

encrypt()


# Pseudocode the following method:

# A decrypt method that reverses the process above. Note that Ruby doesn't have a built-in method for going backward one letter. How can you find out where a letter is in the alphabet, then access the letter right before it? Hint: In the IRB session above, you learned how to ask a string for the index of a letter. "abcdefghijklmnopqrstuvwxyz" counts as a string.

#define a decrypt method
