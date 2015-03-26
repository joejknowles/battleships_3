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
    location = grid[options[:column]][options[:row]]
    if !location.nil?
      location.hit
      grid[options[:column]][options[:row]] = '*'
    else
      grid[options[:column]][options[:row]] = 'o'
    end
  end

  private

  attr_reader :grid
end
