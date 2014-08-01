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
end
