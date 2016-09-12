require_relative 'game'

describe 'GuessMyWord' do
  let(:game) { GuessMyWord.new("hello") }

  it "creates game board based on user input" do
    expect(game.game_board).to eq " _  _  _  _  _ "
  end

  it "inputs a correct guess into the game board" do
    game.game_board
    expect(game.correct_guess('l')).to include(2, 3)
  end

  it "decrements guesses left" do
    expect(game.incorrect_guess('w')).to be < (game.secret_word.length*2)
  end

end