class Ship
  attr_reader :hits
  def initialize
    @hits = 0
  end

  def hit
    @hits += 1
  end
end
