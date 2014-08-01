#require './spaces'
class Board

  attr_accessor :board_spaces

  def initialize
    @players_spaces = []
    @board_spaces = []
    i=0
    9.times do |i|
      @board_spaces << Space.new(i, '')
      i+=1
    end
  end

  def find_space(num)
    @board_spaces.find { |sp| num == sp.number }
  end

  # def occupied (space, player)
  #   if space.symbol == player.symbol
  #     "occupied"
  #   end
end

