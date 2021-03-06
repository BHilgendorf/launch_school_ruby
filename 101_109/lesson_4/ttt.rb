
INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
FINAL_SCORE = 5

def clear_screen
  system('clear') || system('cls')
end

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd, score)
  system 'clear'
  puts "Current score: #{score}"
  puts "You're a #{PLAYER_MARKER}. Computer is an #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "_____+_____+_____"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts " ____+_____+_____"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop: enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def choose_player_turn
  prompt "Press 1 to go first. 2 to go second"
  input = 0
  loop do
    input = gets.chomp.to_i
    break if input == 1 || input == 2
    prompt "There are only players. Please select 1 or 2"
  end
  input == 1 ? 'player' : 'computer'
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter = ', ', word = "or")
  arr[-1] = "#{word} #{arr.last}" if arr.size > 1
  arr.join(delimiter)
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end
  if !square && brd[5] == INITIAL_MARKER
    square = 5
  end
  if !square
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def place_piece!(board, current_player)
  if current_player == 'player'
    player_places_piece!(board)
  else
    computer_places_piece!(board)
  end
end

def next_player(current_player)
  current_player == 'player' ? 'computer' : 'player'
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def keep_score(winner, score)
  if winner == 'Player'
    score[:player] += 1
  elsif winner == 'Computer'
    score[:computer] += 1
  end
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    # on possible solution
    # if brd[line[0]] == PLAYER_MARKER &&
    #    brd[line[1]] == PLAYER_MARKER &&
    #    brd[line[2]] == PLAYER_MARKER
    #   return 'Player'
    # elsif brd[line[0]] == COMPUTER_MARKER &&
    #       brd[line[1]] == COMPUTER_MARKER &&
    #       brd[line[2]] == COMPUTER_MARKER
    #   return "Computer"
    # end
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

loop do
  clear_screen
  current_player = ""
  score = { player: 0, computer: 0 }
  prompt "Welcome to Tick Tac Toe."
  prompt("Each round the winner gets a point. First one to #{FINAL_SCORE} wins")
  current_player = choose_player_turn

  loop do
    board = initialize_board

    loop do
      display_board(board, score)
      place_piece!(board, current_player)
      current_player = next_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end
    display_board(board, score)
    keep_score(detect_winner(board), score)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won this round!"
      prompt "Current score is: #{score}"
    else
      prompt "It's a tie!"
    end
    break if score[:player] == FINAL_SCORE || score [:computer] == FINAL_SCORE
    prompt "Hit enter to go to next round"
    gets
  end

  prompt "Play again? (y or n)"
  answer = ""

  loop do
    answer = gets.chomp.downcase
    break if answer == 'y' || answer == 'n'
    prompt "Please enter only y or n"
  end
  break unless answer == 'y'
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"
