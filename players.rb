class Player
  attr_accessor :player_name, :player_lives
    def initialize
        @player_name = nil
        @player_lives = 3
    end
    def get_name(player_number)
      puts "Whats the name for #{player_number}"
      @player_name = gets.chomp
      puts "Ok #{@player_name} good to go!"
    end
  end