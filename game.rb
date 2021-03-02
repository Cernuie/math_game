require "./players"
require "./questions"

class Game
  def initialize
    @player1 = Player.new('1')
    @player2 = Player.new('2')
    @turn_count = 0
  end
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

  def play
    if player1s_turn?
      question = Question.new
      puts "Player 1: What does #{question.num1} plus #{question.num2} equal?"
      solution = gets.chomp.to_i
      if question.correct?(solution)
        puts "Correct!"
      else
        puts "False!"
      end
    end
  end
  
end

new_game = Game.new

new_game.play