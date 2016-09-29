class Player
  attr_accessor :move, :name, :score

  def initialize
    set_name
    reset_score
  end

  def reset_score
    @score = 0
  end
end

class Move
  VALUES = ['rock', 'paper', 'scissors'].freeze

  def initialize(value)
    @value = value
  end

  def scissors?
    @value == 'scissors'
  end

  def paper?
    @value == 'paper'
  end

  def rock?
    @value == 'rock'
  end

  def >(other_move)
    rock? && other_move.scissors? ||
      paper? && other_move.rock? ||
      scissors? && other_move.paper?
  end

  def <(other_move)
    rock? && other_move.paper? ||
      paper? && other_move.scissors? ||
      scissors? && other_move.rock?
  end

  def to_s
    @value
  end
end

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
      break if Move::VALUES.include? choice
      puts "Sorry, that is not a valid choice."
    end
    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ['Jonny 5', 'Hal', 'R2D2', 'C3PO'].sample
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
  end
end

# Game engine orchestration
class RPSGame
  attr_accessor :human, :computer
  FINAL_SCORE = 3

  def initialize
    clear_screen
    @human = Human.new
    @computer = Computer.new
  end

  def clear_screen
    system('clear') || system('cls')
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors!"
    puts "You earn a point for each hand you win."
    puts "Game ends when either player reaches a score of #{FINAL_SCORE}."
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors."
  end

  def display_moves
    puts "#{human.name} chose #{human.move}"
    puts "#{computer.name} chose #{computer.move}"
  end

  def display_winner
    if human.move > computer.move
      puts "#{human.name} won!"
    elsif human.move < computer.move
      puts "#{computer.name} won!"
    else
      puts "It's a tie."
    end
  end

  def update_score
    if human.move > computer.move
      human.score += 1
    elsif human.move < computer.move
      computer.score += 1
    end
  end

  def display_score
    puts "Current Score:"
    puts "#{human.name}: #{human.score}"
    puts "#{computer.name}: #{computer.score}"
    puts "------------------------------------------"
  end

  def game_over?
    human.score == FINAL_SCORE || computer.score == FINAL_SCORE
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts "Sorry, must be y or n"
    end

    return false if answer == 'n'
    return true if answer == 'y'
  end

  def new_game
    clear_screen
    human.reset_score
    computer.reset_score
    computer.set_name
    puts "You will now play a new opponant: #{computer.name} is up for the challenge."
  end

  def play
    display_welcome_message
    loop do
      loop do
        human.choose
        computer.choose
        display_moves
        display_winner
        update_score
        display_score
        break if game_over?
      end
      break unless play_again?
      new_game
    end
    display_goodbye_message
  end
end

RPSGame.new.play
