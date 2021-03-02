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
    puts "P1: #{@player1.score}/3 vs P2: #{@player2.score}/3 \n -- NEW TURN --"
  end
  #check if player 1's turn
  def which_turn?
    if @turn_count == 0
      return "Player 1"
    else
      return "Player 2"
    end
  end

  def which_decrease(player)
    if player == "Player 1"
      @player1.decrease_score
    else
      @player2.decrease_score
    end
  end

  def goodbye
    puts "-- GAME OVER -- \nGood bye!"
  end
  def play
    while @player1.alive? && @player2.alive?
      #create new question
      question = Question.new
      #prompt for player
      puts "#{which_turn?}: What does #{question.num1} plus #{question.num2} equal?"
      solution = gets.chomp.to_i
      if question.correct?(solution)
        puts "#{which_turn?}: Yes! You are correct."
        scores
      else
        #if player gets it wrong, check which player it is and subtract their score
        puts "#{which_turn?}: Seriously? No!"
        which_decrease(which_turn?)
        #then puts out the scores for both players
        scores
      end
    if @turn_count == 0 
      @turn_count = 1
    else
      @turn_count = 0
    end
    end
    if !@player1.alive?
      puts "Player 2 wins with a score of #{@player2.score}/3"
      goodbye
    elsif !@player2.alive?
      puts "Player 1 wins with a score of #{@player1.score}/3"
      goodbye
    end
  end
end
