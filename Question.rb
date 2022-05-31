class Question 

  def initialize
    @number1 = rand(1..10)
    @number2 = rand(1..10)
    @answer = @number1 + @number2
  end

  def ask(player)
    puts "#{player.name}: What does #{@number1} plus #{@number2} do?"
  end

  def validate(input)
    @answer == input # return true of false
  end


  

end