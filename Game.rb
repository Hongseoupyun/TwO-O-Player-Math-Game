require_relative './Player'
require_relative './Question'
class Game

  #initializer

  def initialize
    @player1 = Player.new("Hongseoup")
    @player2 = Player.new("Andrea")
  end

  def game_over
    @player1.lives == 0 || @player2.lives == 0
  end

  def winner? 
    if @player1.lives == 0 
      puts "#{@player2.name} wins with the score of #{@player2.lives}"
      puts "Game over"
    else
      puts "#{@player1.name} wins with the score of #{@player1.lives}"
      puts "Game over"
    end
  end

  def start 
    
    puts "game started"
    current_player = @player1

    while !game_over do
      question = Question.new
      puts("----New turn----")
      question.ask(current_player)
      player_answer = gets.chomp.to_i
      
      if question.validate(player_answer)
        puts "#{current_player.name}: Yes! You are correct!"
      else
        puts "#{current_player.name}: Wrong Answer!"
        current_player.lose_life
      end 

      if current_player == @player1
        current_player = @player2
       else 
        current_player = @player1
      end

      puts "#{@player1.name}:#{@player1.lives}/3 vs #{@player2.name}:#{@player2.lives}/3"


    end
    
    winner?
  end
end