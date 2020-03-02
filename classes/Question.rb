
class Question < Object
  attr_accessor :x, :y, :answer, :operator, :formula
  def initialize
    @operator = Array[:+,:-].sample
    @x = rand(1...20)
    @y = rand(1...20)
    @answer = eval("#{x}"+"#{operator}"+"#{y}")
    @formula = operator == :+ ? "What's the sum of #{x} and #{y}?" : "What is the difference of #{x} and #{y}?"
  end
end