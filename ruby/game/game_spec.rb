require_relative 'game'

describe 'GuessMyWord' do
  let(:game) { GuessMyWord.new("hello") }

  it "stores the list items given on initialization" do
    expect(game.game_board).to eq " _  _  _  _  _"
  end


end