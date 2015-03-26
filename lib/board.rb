class Board
  #attr_reader :grid

  def initialize
    @grid = { A: [] }
  end

  def place(options)
    grid[options[:column]][options[:row]] = options[:ship]
  end

  def retrieve(options)
    grid[options[:column]][options[:row]]
  end

  def fire(options)
    grid[options[:column]][options[:row]] = '*'
  end

  private

  def grid
    @grid
  end
end
