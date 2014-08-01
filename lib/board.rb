class Board

  attr_accessor :board_spaces

  def initialize
    @playerX_spaces = []
    @playerY_spaces = []
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
    if player.symbol = "X"
      @playerX_spaces << result.number
    else
      @playerO_spaces << result.number
    end
    result
  end

  def win(player)
    winning_matches = [[0,3,6], [1,4,7], [2,5,8],
    [0,1,2], [3,4,5], [6,7,8], [2,4,6], [0,4,8]]
    if player.symbol = "X"
      array = @playerX_spaces.sort!
    else
      array = @playerO_spaces.sort!
    end
    result = false
    winning_matches.each { |win| result = player if array == win }
    result
  end
end
