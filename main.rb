require './players'
require './questions'

class Game
  attr_accessor :player, :player_1, :player_2
  
  player_1 = Player.new('Player 1')
  player_2 = Player.new('Player 2')

  def initialize
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
    @player = player_2
  end

  def start_game

    while player.lives > 0

      if player == player_2
        @player = player_1
      elsif player == player_1
        @player = player_2
      end

      game_play(player)

      if player.lives != 0
        puts "P1: #{player_1.show_lives} vs P2: #{player_2.show_lives}"

      elsif player.lives == 0
        if player == player_1
          puts "#{player_2.name} wins with a score of #{player_2.show_lives}"
        elsif player == player_2
          puts "#{player_1.name} wins with a score of #{player_1.show_lives}"
        end
        puts "----- GAME OVER ----- \n Good Bye!"
      end

    end
  end
end

new_game = Game.new
new_game.start_game
