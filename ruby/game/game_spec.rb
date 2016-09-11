require_relative 'game'

describe 'GuessMyWord' do
  let(:game) { GuessMyWord.new("hello") }

  it "creates game board based on user input" do
    expect(game.game_board).to eq " _  _  _  _  _ "
  end

  it "takes inputs a correct guess into the game board" do
    expect(game.correct_guess('l'))
  end


end