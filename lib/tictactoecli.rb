 
require 'pry'
class TicTacToeCLI 
  
  def call  
   
  puts "Welcome to Ultimate Tic Tac Toe!  Do you want to play against a human, a computer, or nobody?"
    first_input = gets.strip 
    
    if first_input.downcase == "human"
      game = Game.new 
        until game.over?
          game.play 
        end 
    elsif first_input.downcase == "computer"
      game = Game.new(Players::Human.new("X"), Players::Computer.new("O")) 
<<<<<<< HEAD
        until game.over?
          game.play 
        end 
    elsif first_input.downcase == "nobody"
      game = Game.new(Players::Computer.new("X"), Players::Computer.new("O")) 
        until game.over?
          game.play 
        end 
     
     # .times do 
    #  game.play 
     # sleep 5
    #  end 
=======
        until game.won?
          game.play 
        end 
    elsif first_input.downcase == "nobody"
      game = Game.new(Players::Computer.new("X"), Players::Computer.new("O")) 
      9.times do 
      game.play 
      sleep 5
      end 
>>>>>>> cf3ca564d9abcd7e40fb95d329f80986ee29d93f
    else call 
    end 
    if game.over?
      puts "Would you like to play again? Y or N"
      input = gets.strip 
        if input == "Y" || input == "y"
          call 
        else 
          puts "Thanks for playing.  Goodbye."
        end 
    end 
  end
end 
