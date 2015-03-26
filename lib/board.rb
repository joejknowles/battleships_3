class Board
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

  attr_reader :grid
  end
end
