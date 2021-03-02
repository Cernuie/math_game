require "./players"
require "./questions"

class Game
  def initialize
    @player1 = Players.new("1")
    @player2 = Players.new("2")
    @turn_count = 0
  #line that puts out scores
  def scores
    puts "P1: #{@player1.score}/3 vs P2: #{@player2.score}"
  end
  #check if player 1's turn
  def player1s_turn?
    if @turn_count == 0
      return true
    else
      return false
  end
end