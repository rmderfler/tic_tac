require './lib/board'
require './lib/tic_player'
require './lib/spaces'

def main_menu
  puts "\n\n**TIC**TAC*TOE**"
  puts "\nHere is a visual of the board and how to choose a space!!!"

  puts "
  0 | 1 | 2
  ---------
  3 | 4 | 5
  ---------
  6 | 7 | 8
  "
  @playerX = Player.new("X")
  @playerO = Player.new("O")
  @board = Board.new
  puts "This is a 2 player game! The first player is player X, the second is player O.  Player X goes first.\n\n"
  x_moves
end

def x_moves
  puts "Player X, it's your move: "
  moveX = gets.chomp.to_i
  mark = @board.mark_space(@playerX,moveX)
  if mark == "false"
    puts 'sorry, that space has been taken'
    x_moves
  else
    winner = @board.win(@playerX)
    puts winner
    if winner == @playerX
      puts "X wins"
      exit
    else
      o_moves
    end
  end
end


def o_moves
  puts "Player O, it's your move: "
  moveO = gets.chomp.to_i
  mark = @board.mark_space(@playerO,moveO)
  if mark == "false"
    puts 'sorry, that space has been taken'
    x_moves
  else
    winner = @board.win(@playerO)
    if winner == @playerO
      puts "O wins"
      exit
    else
      x_moves
    end
  end




end

main_menu
