require_relative './players';
require_relative './generated_numbers';
class Game
  
  def initialize
    @player1 = Player.new
    @player2 = Player.new
  end
  
  def game_start
    @player1.get_name("player1")
    @player2.get_name("player2")
    puts @player1.inspect
    puts @player2.inspect
    while !game_end?
      player1_answer
      player2_answer
    end
    game_over
  end

  def game_end?
    @player1.player_lives == 0 || @player2.player_lives == 0
  end

    def player1_answer
      @math_problem = Generated_Numbers.new
      @math_problem.question(@player1.player_name)
      answer = gets.chomp.to_i
      if answer == @math_problem.solution.to_i
        puts "Correct!"
      else
        puts "Awww, you got it wrong"
        @player1.lose_life
        puts "Now you have #{@player1.player_lives} lives left"
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
        @player2.lose_life
        puts "Now you have #{@player2.player_lives} lives left"
      end
    end
  
  def game_over
    if @player1.player_lives == 0
      puts "Player1 losses, Player2 wins"
    elsif @player2.player_lives == 0
      puts "Player2 losses, Player2 wins"
    end
  end
end

game = Game.new
game.game_start
# game.player1_answer
# game.player2_answer
# game.game_over

# function play/run
#  puts game.player1
#  puts game.player2
#  puts game.generated_numbers
#  puts game.player1_answer
 
