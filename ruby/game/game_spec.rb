require_relative 'game'

describe 'GuessMyWord' do
  let(:game) { GuessMyWord.new("hello") }

  it "creates game board based on user input" do
    expect(game.game_board).to eq " _  _  _  _  _ "
  end

  it "notifies user of repeat letter guess and prompts user to guess a different letter" do
    expect(game.repeat_guess).to end_with('guesses left.')
  end

end