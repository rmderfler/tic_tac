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
    test_space = Space.new('4')
    expect(test_space).to be_an_instance_of Space
  end
end
