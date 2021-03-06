require 'rspec'
require 'board'
require 'tic_player'
require 'spaces'

describe Player do
  it "initializes a Player object which contains a symbol" do
    test_player = Player.new("X")
    expect(test_player).to be_an_instance_of Player
  end
end

describe Space do
  it 'is initialized by a space' do
    test_space = Space.new('4', 'X')
    expect(test_space).to be_an_instance_of Space
  end
end

describe Board do
  it 'creates nine spaces when initialized' do
    test_board = Board.new
    expect(test_board.board_spaces.length).to eq 9
  end

  it 'creates nine space objects that are numbered 0 through 8' do
    test_board = Board.new
    array = []
    test_board.board_spaces.each { |sp| array << sp.number }
    expect(array).to eq [0,1,2,3,4,5,6,7,8]
  end

  it 'finds a space provided by the player' do
    test_board = Board.new
    expect(test_board.find_space(5)).to eq test_board.board_spaces[5]
  end

  it 'marks the space chosen by player' do
    test_board = Board.new
    test_player = Player.new("X")
    expect(test_board.mark_space(test_player,5)).to eq (test_board.board_spaces[5])
  end

  it "does not allow player to choose marked space" do
    test_board = Board.new
    test_player = Player.new("X")
    test_player2 = Player.new("O")
    test_board.mark_space(test_player,5)
    expect(test_board.mark_space(test_player2,5)).to eq "false"
  end

  it 'determines if a player is a winner!' do
    test_board = Board.new
    test_player = Player.new("X")
    test_board.mark_space(test_player,0)
    test_board.mark_space(test_player,3)
    test_board.mark_space(test_player,6)
    expect(test_board.win(test_player)).to eq test_player
  end
end
