class Player

  attr_accessor :symbol

  @@players = []

  def initialize(symbol)
    @symbol = symbol
    @@players << self
  end

  def choose_space(space)
    @board_spaces[number].symbol = self.symbol
  end
end


