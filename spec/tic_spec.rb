require 'rspec'
require 'board'
require 'tic_player'
require 'spaces'

describe Player do
  it "initializes a Player object which contains a symbol" do
    test_player = Player.new("X")
    expect(test_player).to be_an_instance_of Player
  end

  it "can mark a space with its symbol" do
    test_board = Board.new("happy")
    test_player = Player.new("X")
    puts test_player.symbol
    test_board.board_spaces[0].symbol = "Y"
    puts test_board.board_spaces[0].symbol
    test_player.choose_space(0)
    expect(test_board.board_spaces[0].symbol).to eq("X")
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
    test_board = Board.new("happy")
    expect(test_board.board_spaces.length).to eq 9
  end

  it 'creates nine space objects that are numbered 0 through 8' do
    test_board = Board.new("happy")
    array = []
    test_board.board_spaces.each { |sp| array << sp.number }
    expect(array).to eq [0,1,2,3,4,5,6,7,8]
  end

  describe ".all" do
    it 'contains all of the boards' do
      test_board = Board.new("happy")
      test_bored = Board.new("quick")
      expect(Board.all).to eq [test_bored, test_bored]
    end
  end
end
