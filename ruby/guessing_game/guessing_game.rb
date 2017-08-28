class Game
  attr_reader :total_guesses, :word_solved
  attr_accessor :guess, :word

  def initialize(word)
    @word = word
    @total_guesses = (@word.length/2) + 3
    @word_solved = false
    @letters_revealed = "_" * @word.length
  end


  def show_letter(guess)
    @word.chars.each_with_index do |letter, index|
      if letter == guess
        @letters_revealed[index] = guess
      end
    end
    puts @letters_revealed
  end

  def check_guess(guess)
    @guess = guess
    if @guess == @word
      @word_solved = true
    elsif guess.length == 1 && word.include?(guess)
      show_letter(guess)
    else
      false
    end
  end
end

######## ---------------- User Interface -------------- #######

puts "Welcome to the guessing game! User 1, please enter a word for User 2 to guess."
word = gets.chomp
game = Game.new(word)

puts "The word is now entered. User 2, you have #{game.total_guesses} attempts to guess the word."

amount_of_guesses = 0
past_guesses = []

while amount_of_guesses < game.total_guesses
  puts "Enter your guess."
  guess = gets.chomp
  amount_of_guesses += 1 unless past_guesses.include?(guess)
  past_guesses.push(guess) unless past_guesses.include?(guess)
  p "Amount of guesses: " + "#{amount_of_guesses}"

  if !game.check_guess(guess) && (amount_of_guesses < game.total_guesses) && (!word.include?(guess))
    puts "Nope! Try again."

  elsif game.check_guess(guess) && game.word_solved
    puts "Congratulations, you won!"
    break

  elsif !game.check_guess(guess) && (amount_of_guesses == game.total_guesses)
    puts "You are out of guesses and the game is now over. Better luck next time!"
  end
end

puts "Thank you for playing."



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

# Driver code:
# # Ask the user to enter a word
# -Assign that word to a variable
# # Tell user 2 to begin guessing