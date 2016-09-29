#structure of the game after the first refactoring round of walk throughs

class Player
  attr_accessor :move, :name

  def initialize
    set_name
  end
end

#outlined in the initial stucture, but not used in the 1st or 2nd walkthrough
# class Move
#   def initialize
#     #
#   end
# end

# class Rule
#   def initialize
#     #not sure the "state"
#   end
# end

# #don't know where ths goes yet.
# def compare(move1, move2)

# end




class Human < Player
  def set_name
    n = ' '
    loop do
      puts "What is your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, you must enter a value."
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, or scissors:"
      choice = gets.chomp
      break if ['rock', 'paper', 'scissors'].include? choice
      puts "Sorry, that is not a valid choice."
    end
    self.move = choice
  end

end

class Computer < Player
  def set_name
    self.name = ['Jonny 5', 'Hal', 'R2D2', 'C3PO'].sample
  end

  def choose
    self.move = ['rock', 'paper', 'scissors'].sample
  end
end

#Game engine orchestration
class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors!"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors."
  end

  def display_winner
    puts "#{human.name} chose #{human.move}"
    puts "#{computer.name} chose #{computer.move}"

    case human.move
    when "scissors"
      puts "It's a tie" if computer.move == "scissors"
      puts "#{human.name} wins!" if computer.move == "paper"
      puts "#{computer.name} wins." if computer.move == "rock"
    when "paper"
      puts "It's a tie" if computer.move == "paper"
      puts "#{human.name} wins!" if computer.move == "rock"
      puts "#{computer.name} wins." if computer.move == "scissors"
    when "rock"
      puts "It's a tie" if computer.move == "rock"
      puts "#{human.name} wins!" if computer.move == "scissors"
      puts "#{computer.name} wins." if computer.move == "paper"
    end

    def play_again?
      answer = nil
      loop do
        puts "Would you like to play again? (y/n)"
        answer = gets.chomp
        break if ['y', 'n'].include? answer.downcase
        puts "Sorry, must be y or n"
      end

      return true if answer == 'y'
      return false
    end

  end

  def play
    display_welcome_message

    loop do
      human.choose
      computer.choose
      display_winner
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play
