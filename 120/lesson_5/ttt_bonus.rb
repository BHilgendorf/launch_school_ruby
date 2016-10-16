module Displayable
  def clear_screen
    system('clear') || system('cls')
  end

  def display_welcome_message
    puts "Welcome to Tic Tac Toe!"
    puts "We will play until someone reaches #{Game::WINNING_SCORE} points."
    puts "The winner of each round will get 1 point."
    puts "Let's get started."
    puts ""
    puts "---------------------------------------------------------------------"
  end

  def display_names
    clear_screen
    puts "Hello #{human.name}!  Your opponent will be #{computer.name}."
  end

  def display_goodbye_message
    puts "Thanks for playing #{human.name}. Goodbye."
  end

  def display_board
    puts "#{human.name}: #{human.marker} #{computer.name}: #{computer.marker}"
    puts display_score
    puts " "
    board.draw
    puts " "
  end

  def display_empty_squares
    square_choices = board.empty_squares
    square_choices[-1] = "or #{square_choices.last}" if square_choices.size > 1
    square_choices.join(', ')
  end

  def clear_screen_and_display_board
    clear_screen
    display_board
  end

  def display_round_result
    clear_screen_and_display_board
    case board.winning_marker
    when human.marker
      puts "#{human.name} won this round!"
    when computer.marker
      puts "#{computer.name} Won this round."
    else
      puts "This round is a tie."
    end
    sleep 1
  end

  def display_match_result
    case board.winning_marker
    when human.marker
      puts "#{human.name} wins the match!"
    when computer.marker
      puts "#{computer.name} wins the match!"
    end
    puts "Updated #{display_score}"
  end

  def display_score
    "Score => #{human.name}: #{human.score} #{computer.name}: #{computer.score}"
  end
end

#-------------------------------------------------------------------------------
class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                  [[1, 5, 9], [3, 5, 7]].freeze

  def initialize
    @squares = {}
    reset
  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end

  def []=(num, marker)
    @squares[num].marker = marker
  end

  def empty_squares
    @squares.keys.select { |key| @squares[key].unmarked? }
  end

  def at_risk_square(marker)
    WINNING_LINES.each do |line|
      line_of_squares = @squares.select { |key, _| line.include?(key) }
      markers = line_of_squares.values.collect(&:marker)
      if markers.count(marker) == 2 &&
         markers.count(Square::INITIAL_MARKER) == 1
        return line_of_squares.select { |_, value| value.unmarked? }.keys.first
      end
    end
    nil
  end

  def full?
    empty_squares.empty?
  end

  def someone_won?
    !!winning_marker
  end

  def winning_marker
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      if three_identical_markers?(squares)
        return squares.first.marker
      end
    end
    nil
  end

  def square_5_marked?
    @squares[5].marked?
  end

  # rubocop:disable Metrics/AbcSize
  def draw
    puts "     |     |     "
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}"
    puts "     |     |     "
    puts "-----+-----+-----"
    puts "     |     |     "
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}"
    puts "     |     |     "
    puts "-----+-----+-----"
    puts "     |     |     "
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}"
    puts "     |     |     "
  end
  # rubocop: enable Metrics/AbcSize

  private

  def three_identical_markers?(squares)
    markers = squares.select(&:marked?).collect(&:marker)
    return false if markers.size != 3
    markers.all? { |element| element == markers.first }
  end
end

#-----------------------------------------------------------------------
class Square
  INITIAL_MARKER = ' '.freeze

  attr_accessor :marker

  def initialize
    @marker = INITIAL_MARKER
  end

  def to_s
    marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end

  def marked?
    marker != INITIAL_MARKER
  end
end

#---------------------------------------------------------------------
class Player
  MARKER_OPTIONS = ["X", "O"].freeze

  attr_accessor :score, :name, :marker

  def initialize
    @marker = nil
    @score = 0
  end
end

#-----------------------------------------------------------------------
class Human < Player
  def initialize
    super
  end

  def set_name
    answer = ' '
    puts "What is your name?"
    loop do
      answer = gets.chomp
      break if answer =~ /[a-zA-Z0-9]/
      puts "Please enter only letters and numbers."
    end
    self.name = answer.capitalize
  end

  def choose_marker
    marker_choice = nil
    puts "Would you like to be #{MARKER_OPTIONS.join(' or ')}"
    loop do
      marker_choice = gets.chomp.upcase
      break if MARKER_OPTIONS.include?(marker_choice)
      puts "Please choose a valid marker."
    end
    self.marker = marker_choice
  end
end

#-----------------------------------------------------------------------
class Computer < Player
  COMPUTER_NAMES = ["HAL", "Siri", "R2D2", "C3PO", "Johnny 5"].freeze

  def set_name
    self.name = COMPUTER_NAMES.sample
  end

  def assign_marker(human_marker)
    case human_marker
    when "X"
      self.marker = "O"
    when "O"
      self.marker = "X"
    end
  end
end

#-------------------------------------------------------------------------------
class Game
  include Displayable

  WINNING_SCORE = 5
  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Human.new
    @computer = Computer.new
    @current_player = nil
    @first_player = nil
    @player_order = 0
  end

  def play
    game_setup
    loop do
      loop do
        play_round
        game_over? ? break : round_reset
      end
      display_match_result
      break unless play_again?
      game_reset
    end
    display_goodbye_message
  end

  #----------------------------------------------------------------------------
  private

  def game_setup
    clear_screen
    display_welcome_message
    set_names
    display_names
    establish_markers
    choose_player_order
    set_player_order
    clear_screen_and_display_board
  end

  def play_round
    loop do
      current_player_moves
      break if board.someone_won? || board.full?
      clear_screen_and_display_board if human_turn?
    end
    update_score
    display_round_result
  end

  def set_names
    human.set_name
    computer.set_name
  end

  def establish_markers
    human.choose_marker
    computer.assign_marker(human.marker)
  end

  def choose_player_order
    puts " "
    puts "Would you like to: "
    puts "Go first => Enter 1"
    puts "Go second => Enter 2"
    user_choice = 0
    loop do
      user_choice = gets.chomp.to_i
      break if user_choice == 1 || user_choice == 2
      puts "Choice can only be 1 or 2"
    end
    @player_order = user_choice
  end

  def set_player_order
    case @player_order
    when 1
      @current_player = human.marker
    when 2
      @current_player = computer.marker
    end
    @first_player = @current_player
  end

  def human_moves
    puts "Choose a square: #{display_empty_squares}"
    choice = nil
    loop do
      choice = gets.chomp.to_i
      break if board.empty_squares.include?(choice)
      puts "That is not a valid choice. Please try again."
    end
    board[choice] = human.marker
  end

  def offensive_move
    board.at_risk_square(computer.marker)
  end

  def defensive_move
    board.at_risk_square(human.marker)
  end

  def computer_moves
    square = offensive_move
    square = defensive_move unless square
    square = 5 unless square || board.square_5_marked?
    square = board.empty_squares.sample unless square
    board[square] = computer.marker
  end

  def current_player_moves
    if human_turn?
      human_moves
      @current_player = computer.marker
    else
      computer_moves
      @current_player = human.marker
    end
  end

  def human_turn?
    @current_player == human.marker
  end

  def update_score
    case board.winning_marker
    when human.marker
      human.score += 1
    when computer.marker
      computer.score += 1
    end
  end

  def play_again?
    answer = nil
    puts "Would you like to play again?"
    loop do
      answer = gets.chomp.downcase
      break if %w(y n).include?(answer)
      puts "That is not a valid choice. Please enter only y or n."
    end
    answer == 'y'
  end

  def game_over?
    human.score == WINNING_SCORE || computer.score == WINNING_SCORE
  end

  def round_reset
    board.reset
    clear_screen_and_display_board
    @current_player = @first_player
  end

  def game_reset
    human.score = 0
    computer.score = 0
    board.reset
    clear_screen
    set_markers
    choose_player_order
    set_player_order
    clear_screen_and_display_board
  end
end

game = Game.new
game.play
