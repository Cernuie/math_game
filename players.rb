class Player

  attr_accessor :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def decrease_score
    @score -= 1
  end

  def alive?
    @score > 0
  end

end
