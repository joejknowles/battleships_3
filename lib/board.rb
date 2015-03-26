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
    location = grid[options[:column]][options[:row]]
    if !location.is_a?(String)
      location.hit
      grid[options[:column]][options[:row]] = '*'
    else
      grid[options[:column]][options[:row]] = 'o'
    end
  end

  private

  attr_reader :grid
end
