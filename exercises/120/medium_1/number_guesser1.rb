class PingGame
  attr_accessor :guesses_remaining, :guess, :win
  attr_reader :number

  def play
    game_reset
    clear_screen
    loop do
      play_round
      break if game_over?
    end
    display_game_end
  end

  private

  def clear_screen
    system('clear') || system('cls')
  end

  def game_reset
    @number = rand(1..100)
    @guesses_remaining = 7
    @win = :no
  end

  def play_round
    display_guesses_remaining
    obtain_guess
    evaluate_guess
    decrease_guesses_remaining
  end

  def display_game_end
      if win?
        puts "You guessed correctly. You Win"
      else
        puts "You are out of guesses. You lose."
        puts "The magic number was #{number}."
      end
  end

  def game_over?
    win? || guesses_remaining == 0
  end

  def win?
    win == :yes
  end

  def obtain_guess
    puts "Enter a number between 1 and 100:"
    self.guess = gets.chomp.to_i
    validate_guess
  end

  def validate_guess
    loop do
      if invalid_guess?(guess)
        puts "Invalid guess. Enter a number between 1 and 100:"
        self.guess = gets.chomp.to_i
      else
        break
      end
    end
  end

  def invalid_guess?(guess)
    guess < 1 || guess > 100
  end

  def evaluate_guess
    if guess > number
      puts "Your guess is too high"
    elsif guess < number
      puts "Your guess is too low"
    else
      self.win = :yes
    end
  end

  def display_guesses_remaining
    if guesses_remaining == 1
      puts "You have 1 guess remaining."
    else
      puts "You have #{guesses_remaining} guesses remaining."
    end
  end

  def decrease_guesses_remaining
    self.guesses_remaining -= 1
  end
end



game = PingGame.new
game.play


#Much shorter given solution
# class GuessingGame
#   RANGE = 1..100
#   MAX_GUESSES = 7

#   MESSAGES = {win: "You guessed correctly. You Win",
#               lose: "You are out of guesses. Magic number was #{@number}",
#               high: "Guess is too high.",
#               low:  "Guess is too low"}

#   def play
#     reset
#     MAX_GUESSES.downto(1) do |remaining_guesses|
#       display_remaining_guesses(remaining_guesses)
#       result = evaluate_guess(obtain_guess)
#       puts MESSAGES[result]
#       return if result == :win
#     end
#   end

#   private
#   def reset
#     @number = RANGE.to_a.sample
#   end

#   def obtain_guess
#     loop do
#       puts "Please enter a number between #{RANGE.first} and #{RANGE.last}:"
#       guess = gets.chomp.to_i
#       return guess if RANGE.cover?(guess)
#       puts "Invalid Guess."
#     end
#   end

#   def evaluate_guess(guess)
#     return :win if guess == @number
#     return :low if guess < @number
#     :high
#   end

#   def display_remaining_guesses(remaining_guesses)
#     if remaining_guesses == 1
#       puts "You have 1 guess left"
#     else
#       puts "You have #{remaining_guesses} remaining guesses."
#     end
#   end

# end

# game = GuessingGame.new
# game.play