module Displayable
  def clear_screen
    system('clear') || system('cls')
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors, Lizard, Spock!"
    puts "You earn a point for each hand you win."
    puts "Game ends when a player reaches a score of #{RPSGame::FINAL_SCORE}."
    puts " "
  end

  def display_moves
    puts "-----------------------------------------------------"
    puts "#{human.name} chose #{human.move.value}"
    puts "#{computer.name} chose #{computer.move.value}"
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

  def display_score
    puts " "
    puts "Score:"
    puts "#{human.name}: #{human.score}  #{computer.name}: #{computer.score}"
    puts "-----------------------------------------------------"
  end

  def display_choices
    output = 'Choose a letter: R => Rock, P => Paper, S => Scissors, '\
     'L => Lizard, K => Spock'
    puts output
  end

  def display_match_winner
    if human.score == 3
      puts "#{human.name} wins the match!"
    else
      puts "#{computer.name} wins the match!"
    end
    puts " "
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors, Lizard, Spock."
  end
end
# ---------------------------------------------------------------------
class Move
  VALID_CHOICES = { rock: "r", paper: "p", scissors: "s",
                    lizard: "l", spock: "k" }.freeze

  attr_reader :value

  def initialize(value)
    @value = value
  end

  def scissors?
    @value == :scissors
  end

  def paper?
    @value == :paper
  end

  def rock?
    @value == :rock
  end

  def lizard?
    @value == :lizard
  end

  def spock?
    @value == :spock
  end

  def >(other_move)
    rock? && (other_move.scissors? || other_move.lizard?) ||
      paper? && (other_move.rock? || other_move.spock?) ||
      scissors? && (other_move.paper? || other_move.lizard?) ||
      lizard? && (other_move.spock? || other_move.paper?) ||
      spock? && (other_move.scissors? || other_move.rock?)
  end

  def <(other_move)
    (rock? || spock?) && other_move.paper? ||
      (paper? || lizard?) && other_move.scissors? ||
      (scissors? || lizard?) && other_move.rock? ||
      (spock? || paper?) && other_move.lizard? ||
      (scissors? || rock?) && other_move.spock?
  end

  def to_s
    @value
  end
end
# ------------------------------------------------------------------
class Player
  attr_accessor :move, :name, :score

  def initialize
    reset_score
  end

  def reset_score
    @score = 0
  end
end
# ---------------------------------------------------------------------
class Human < Player
  def initialize
    super
    set_name
  end

  def set_name
    answer = ' '
    puts "What is your name?"
    loop do
      answer = gets.chomp
      break unless answer.strip.empty?
      puts "Please enter only letters or numbers."
    end
    self.name = answer
  end

  def choose
    choice = nil
    loop do
      choice = gets.chomp.downcase
      break if Move::VALID_CHOICES.values.include?(choice)
      puts "Sorry, that is not a valid choice."
    end
    self.move = Move.new(Move::VALID_CHOICES.key(choice))
  end
end
# ----------------------------------------------------------------------
class Computer < Player
  SIRI = { rock: 2, paper: 2, scissors: 2, lizard: 2, spock: 2 }.freeze
  HAL = { rock: 5, paper: 1, scissors: 3 }.freeze
  R2D2 = { rock: 1, paper: 3, scissors: 3, lizard: 4, spock: 4 }.freeze

  def initialize(name)
    super()
    @name = name
  end

  def generate_choices(computer)
    list_of_choices = []
    computer.each do |move, frequency|
      frequency.times do
        list_of_choices << move
      end
    end
    list_of_choices
  end

  def choose
    self.move = case name
                when 'HAL'
                  Move.new(generate_choices(HAL).sample)
                when 'Siri'
                  Move.new(generate_choices(SIRI).sample)
                when 'R2D2'
                  Move.new(generate_choices(R2D2).sample)
                else
                  Move.new(Move::VALID_CHOICES.keys.sample)
                end
  end
end
# ---------------------------------------------------------------------
class RPSGame
  include Displayable

  attr_accessor :human, :computer

  FINAL_SCORE = 3
  # ---------------------------------------------------------------------
  def play
    game_setup
    loop do
      loop do
        play_round
        break if game_over?
        start_next_round
      end
      display_match_winner
      break unless play_again?
      new_game
      set_opponent
    end
    display_goodbye_message
  end
  # ---------------------------------------------------------------------

  private

  def game_setup
    clear_screen
    display_welcome_message
    define_players
  end

  def play_round
    clear_screen
    display_score
    display_choices
    human.choose
    computer.choose
    display_moves
    display_winner
    update_score
    display_score
  end

  def define_players
    define_human
    set_opponent
  end

  def define_human
    @human = Human.new
  end

  def choose_opponent
    puts " "
    puts "Who would you like to choose as your opponent?"
    puts "Enter 1 to choose Siri"
    puts "Enter 2 to choose Hal"
    puts "Enter 3 to choose R2D2"
    choice = nil
    loop do
      choice = gets.to_i
      break if [1, 2, 3].include?(choice)
      puts "Invalid options. Please choose 1, 2 or 3."
    end
    choice
  end

  def set_opponent
    user_selected_opponent = choose_opponent
    case user_selected_opponent
    when 1 then @computer = Computer.new('Siri')
    when 2 then @computer = Computer.new('HAL')
    when 3 then @computer = Computer.new('R2D2')
    end
  end

  def update_score
    if human.move > computer.move
      human.score += 1
    elsif human.move < computer.move
      computer.score += 1
    end
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
      puts "Sorry,input must be y or n"
    end

    return false if answer == 'n'
    return true if answer == 'y'
  end

  def start_next_round
    puts "Press any key to start next round:"
    gets.chomp
  end

  def new_game
    human.reset_score
    computer.reset_score
  end
end

RPSGame.new.play
