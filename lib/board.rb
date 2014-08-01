class Board

  attr_accessor :board_spaces

  @@boards = []

  def initialize(name)
    @name = name
    @players_spaces = []
    @board_spaces = []
    i=0
    9.times do |i|
      @board_spaces << Space.new(i, '')
      i+=1
    end
    @@boards << self
  end

  def self.all
    @@boards
  end

  # def occupied (space, player)
  #   if space.symbol == player.symbol
  #     "occupied"
  #   end


end

