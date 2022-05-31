require_relative './Player'
require_relative './Question'
class Game

  #initializer

  def initialize
    @player1 = Player.new("Hongseoup")
    @player2 = Player.new("Andrea")
  end

  def start 
    puts "game started"

    current_player = @player1

    while @player1.lives != 0 || @player2.lives != 0  do 
      question = Question.new
      question.ask(current_player)
      player_answer = gets.chomp.to_i
      puts question.validate(player_answer)
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
    
      puts "P1:#{@player1.lives}/3 vs P2:#{@player2.lives}/3"
    end
    
    puts "Game over"

    

    


    

  end

  



  



  #method

  #1.start the game
  #2.Ask qeustions
  #3.Accepts inputs
  #4.Validate the answers
  #5.loop(ask and validate)
  #6.end the game if one of the players has 0 life

  


  
end
