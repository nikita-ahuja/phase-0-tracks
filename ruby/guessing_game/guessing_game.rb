class Game
  attr_reader :game_over, :word_solved, :total_guesses, :no_more_guesses
  attr_accessor :guess, :word, :guess_counter, :guesses_left

  def initialize(word)
    @word_solved = false
    @game_over = false
    @word = word
    @total_guesses = (@word.length/2) + 3
    #@guess_counter = 0
    #@guesses_left = @total_guesses - @guess_counter
    #@no_more_guesses = ((@total_guesses) == (@guess_counter))
  end

  def convert_word(word)
    word = word.split("")
  end

  def check_guess(guess)
    @guess = guess
    #@guess_counter += 1
      if @guess == @word
        @word_solved = true
        you_won
      else
        false
        #you_lost
      end
  end

  # def you_won
  #   if @word_solved
  #     @game_over = true
  #     puts "Congratulations, you won!"
  #   end
  # end

  # def you_lost
  #   #if @guess_counter >= @total_guesses
  #     game_over = true
  #     puts "You are out of guesses and the game is now over."
  #   end
  # end

  # def end_of_game
  #   if @game_over && @word_solved
  #     puts "Congratulations! You guessed the word."
  #   else # if game_over but word not solved
  #     puts "Haha... you lost!"
  #   end
  # end

#end

# Driver code:
# # Ask the user to enter a word
# -Assign that word to a variable
# # Tell user 2 to begin guessing

puts "Welcome to the guessing game! User 1, please enter a word for User 2 to guess."
word = gets.chomp
game = Game.new(word)
game.convert_word(word)

puts "The word is now entered. User 2, you have #{game.total_guesses} attempts to guess the word."

amount_of_guesses = 0

while amount_of_guesses < game.total_guesses
  puts "Enter your guess."
  guess = gets.chomp
  amount_of_guesses += 1

    if !game.check_guess(guess) && !game.game_over
      puts "Nope! Try again."

    elsif game.check_guess(guess) && game.word_solved
      puts "Congratulations, you won!"

    else  !game.word_solved && game.game_over
      puts "You are out of guesses and the game is now over."

    end
end

end













#PSEUDOCODE

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