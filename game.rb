require_relative './players';
require_relative './generated_numbers';
class Game
  def initialize
    @player1 = Player.new
    @player2 = Player.new
  end
  
  tidef game_start
    @player1.get_name("player1")
    @player2.get_name("player2")
    puts @player1.inspect
    puts @player2.inspect
  end
  
  def player1_answer
    response = gets.chomp
    @math_problem = Generated_Numbers.new
    @math_problem.question(@player1.player_name)
    answer = gets.chomp.to_i
    if answer == @math_problem.solution.to_i
      puts "Correct!"
    else
      puts "Awww, you got it wrong"
      minus_life = @player1.player_lives - 1
      puts "Now you have #{minus_life} lives left"
    end
  end

  def player2_answer
    @math_problem = Generated_Numbers.new
    @math_problem.question(@player2.player_name)
    answer = gets.chomp.to_i
    if answer == @math_problem.solution.to_i
      puts "Correct!"
    else
      puts "Awww, you got it wrong"
      minus_life = @player2.player_lives - 1
      puts "Now you have #{minus_life} lives left"
    end
  end
end

game = Game.new
game.game_start
game.player1_answer
game.player2_answer

# function play/run
#  puts game.player1
#  puts game.player2
#  puts game.generated_numbers
#  puts game.player1_answer
 
