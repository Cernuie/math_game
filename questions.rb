class Question
  attr_accessor :answer, :num1, :num2
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def correct?(solution)
    if solution != @answer
      return false
    else
      return true
    end
  end
end
