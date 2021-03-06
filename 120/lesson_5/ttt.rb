class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                  [[1, 5, 9], [3, 5, 7]]

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

class Square
  INITIAL_MARKER = ' '

  attr_accessor :marker

  def initialize(marker = INITIAL_MARKER)
    @marker = marker
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

class Player
  attr_reader :marker

  def initialize(marker)
    @marker = marker
  end
end

class Game
  HUMAN_MARKER = 'X'
  COMPUTER_MARKER = "O"
  FIRST_TO_MOVE = HUMAN_MARKER

  attr_reader :board, :human, :computer

  def play
    clear_screen
    display_welcome_message
    display_board

    loop do
      loop do
        current_player_moves
        clear_screen_and_display_board
        break if board.someone_won? || board.full?
        clear_screen_and_display_board if human_turn?
      end

      display_result
      break unless play_again?
      reset
    end

    display_goodbye_message
  end

  private

  def initialize
    @board = Board.new
    @human = Player.new(HUMAN_MARKER)
    @computer = Player.new(COMPUTER_MARKER)
    @current_player = FIRST_TO_MOVE
  end

  def clear_screen
    system('clear') || system('cls')
  end

  def display_welcome_message
    puts "Welcome to Tic Tac Toe!"
  end

  def display_goodbye_message
    puts "Thanks for playing. Goodbye."
  end

  def display_board
    puts "You're a #{HUMAN_MARKER}. Computer is a #{COMPUTER_MARKER}"
    puts " "
    board.draw
    puts " "
  end

  def clear_screen_and_display_board
    clear_screen
    display_board
  end

  def human_moves
    puts "Choose a square #{board.empty_squares.join(' ')}"
    choice = nil
    loop do
      choice = gets.chomp.to_i
      break if board.empty_squares.include?(choice)
      puts "That is not a valid choice. Please try again."
    end
    board[choice] = human.marker
  end

  def computer_moves
    board[board.empty_squares.sample] = computer.marker
  end

  def current_player_moves
    if human_turn?
      human_moves
      @current_player = COMPUTER_MARKER
    else
      computer_moves
      @current_player = HUMAN_MARKER
    end
  end

  def human_turn?
    @current_player == HUMAN_MARKER
  end

  def display_result
    case board.winning_marker
    when HUMAN_MARKER
      puts "You won!"
    when COMPUTER_MARKER
      puts "Computer Won!"
    else
      puts "Tie Game."
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

  def reset
    board.reset
    clear_screen_and_display_board
    @current_player = FIRST_TO_MOVE
  end
end

game = Game.new
game.play
