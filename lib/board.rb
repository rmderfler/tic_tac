class Board

  attr_accessor :board_spaces

  def initialize
    @players_spaces = []
    @board_spaces = []
    #create 9 spaces and push into board_spaces
    i=0
    9.times do |i|
      @board_spaces << Space.new(i, '')
      i+=1
    end
  end
end

