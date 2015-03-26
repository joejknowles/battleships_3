class Board
  def initialize
    @grid = { A: [' ', ' '], B: [' ', ' '] }
  end

  def place(options)
    fail 'not on the board' unless (:A..:B).include?(options[:column])
    fail 'not on the board' unless (0..1).include?(options[:row]) 
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
