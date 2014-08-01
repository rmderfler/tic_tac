#require './spaces'
class Board

  attr_accessor :board_spaces

  def initialize
    @players_spaces = []
    @board_spaces = []
    i=0
    9.times { |i| @board_spaces << Space.new(i, ''); i+=1 }
  end

  def find_space(num)
    @board_spaces.find { |sp| num == sp.number }
  end

  def mark_space(player, player_chose_space)
    result = false
    @board_spaces.each do |sp|
      if sp.number == player_chose_space
        if sp.symbol == "X" || sp.symbol =="O"
          return false
        else
          sp.symbol = player.symbol
          result = sp
        end
      end
    end
    result
  end
end
