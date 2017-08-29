require_relative "guessing_game"


describe Game do
  let (:game) {Calculator.new}

  # it "initializes the new game" do
  #   expect(game.initialize(word)). to eq

  it "shows the guessed letters if they are in the word"
    expect(game.show_letter(guess)). to eq @letters_revealed
  end

end