#PSEUDOCODE

class Game
  attr_reader :game_over
  attr_accessor :guess, :word, :total_guesses, :guess_counter, :guesses_left

  def initialize(word)
    @word_solved = false
    @game_over = false
    @word = word
    @total_guesses = (@word.length/2) + 3
    @guess_counter = 0
    @guesses_left = @total_guesses - @guess_counter
  end


  def guessing(guess)
    @guess = guess
    @guess_counter += 1
    while @guess_counter < @total_guesses
      guess_a_letter
    #else
    end
      you_lost
    #end
  end

  def guess_a_letter(guess)
    if @guess == @word
      @word_solved = true
      @game_over = true
    else
      #false
      puts "Nope, try again!"
    end
  end


  def you_lost
    if @guess_counter > @total_guesses
      game_over = true
      puts "You are out of guesses and the game is now over."
    end
    #break
  end


  #     while !@word_solved && (@guess_counter < @total_guesses)
  #       puts "Please enter another guess. You have #{@guesses_left} guesses left:"
  #     end
  #   puts "The game is over and you have lost! Haha!"
  # end


  # def end_of_game
  #   if @game_over && @word_solved
  #     puts "Congratulations! You guessed the word."
  #   else # if game_over but word not solved
  #     puts "Haha... you lost!"
  #   end
  # end

#end


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

puts "Welcome to the guessing game! User 1, please enter a word for User 2 to guess."
word = gets.chomp
game = Game.new(word)

#puts "User 1: enter a word for User 2 to guess:"
#game.word = gets.chomp
puts "The word is now entered. User 2, you have #{game.total_guesses} attempts to guess the word."

while !game.game_over
  puts "Enter your guess."
  guess = gets.chomp
  if !game.guessing(guess)
    #puts "Nope! Try again."
  end
end
end
#puts "Congratulations you guessed the word!"
