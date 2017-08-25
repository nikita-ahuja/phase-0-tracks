#PSEUDOCODE

class Game
  attr_reader :
  attr_accessor :guess

  def initialize
    @word_solved = false
    @game_over = false
  end

  def guessing(guess)
    if guess == word
      word_solved = true
      game_over = true

  def end_of_game
    if game_over && word_solved
      puts "Congratulations! You guessed the word."
    else
      puts "Haha... you lost!"
    end
  end

end


# #def initialize
# #Input: none
# #Steps:
# - note that the game has begun with a BOOLEAN (@game_over = false)
# - and that the word is unsolved with another boolean (@word_solved = false)
# #Output:
# -the word will be assigned to a “word” variable
# - ask the other user to guess the word or a letter

# #def guessing(users_guess)
# #input: users guess (string)
# #steps:
# -create a LOOP and IF statement that compares the users guess with the inputted word
# -create a counter that counts the amount of guesses
# -limit the amount of guesses to the letters in the word/2 (while guess_counter < word.length/2)
# -if the letter the user guesses is in the word then print the word for them with that letter included
# -if a user guesses the same letter twice, do not increment the counter!!!
# #output: boolean ??

#  if users_guess == word
#   @game_over = true

# # def show_letter(letter)
# #input:
# #steps:

# #end_game
# if game_over && word_solved
# puts “Congratulations!”
# else
# puts “haha you lost!”
# end

# Driver code:
# # Ask the user to enter a word
# -Assign that word to a variable
# # Tell user 2 to begin guessing

puts "User 1: enter a word for User 2 to guess:"
word = gets.chomp
amount_of_guesses = (word.length)/2
puts "The word is now entered. User 2, you have #{amount_of_guesses} guesses."
while !game_over
  puts "Enter your first guess."
  guess = gets.chomp
