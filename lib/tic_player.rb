class Player

  attr_accessor :symbol

  @@players = []

  def initialize(symbol)
    @symbol = symbol
    @@players << self
  end


end

