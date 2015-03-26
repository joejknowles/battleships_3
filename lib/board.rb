class Board
  attr_accessor :ships

  def place(options)
    @ships = options[:ship]
  end

  def retrieve(_options)
    ships
  end
end
