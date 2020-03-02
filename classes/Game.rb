require_relative './Player';
require_relative './Question';
class Game < Object
  attr_accessor :current_player, :player1, :player2, :question, :active
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = player1
    @question = Question.new
    @active = true
  end
  def ask_question
    puts "#{current_player.name}: #{question.formula}"
    guess = gets.chomp.to_i
    if (guess == question.answer)
    puts "#{current_player.name}: Correct!"
    else
    puts "#{current_player.name}: Wrong!"
    @current_player.life_count = current_player.life_count - 1;
    end
  end
  def report
    if (player1.life_count == 0 || player2.life_count == 0)
      self.switch_player
      puts "#{current_player.name} wins the game with #{current_player.life_count} hearts remaining!"
      puts "------Game Over------
       GoodBye!"
      @active = false
    else 
      puts "P1: #{player1.life_count}/3 vs P2: #{player2.life_count}/3"
      puts "------New Turn------"
    end
  end
  def switch_player
    current_player == player1 ? @current_player = player2 : @current_player = player1
  end
  def new_round
    self.ask_question
    self.report
    self.switch_player
  end
end
