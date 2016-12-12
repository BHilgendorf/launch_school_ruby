class GuessingGame

  MESSAGES = {win: "You guessed correctly. You win",
              lose: "You have no remaining guesses.",
              low: "Your guess is too low.",
              high: "Your guess is too high."}.freeze

  def initialize(low, high)
    @range = low..high
    @max_guesses = Math.log2(high - low).to_i + 1
  end

  def play
    game_reset
    clear_screen
    @max_guesses.downto(1) do |guesses_remaining|
      display_guesses_remaining(guesses_remaining)
      result = evaluate_guess(obtain_guess)
      puts MESSAGES[result]
      return if result == :win
    end

    puts MESSAGES[:lose] + "The magic number was #{@magic_number}"
  end

  private

  def clear_screen
    system('clear') || system('cls')
  end

  def game_reset
    @magic_number = rand(@range)
  end

  def display_guesses_remaining(guesses_remaining)
    puts "\n"
    if guesses_remaining == 1
      puts "You only have 1 guess remaining."
    else
      puts "You have #{guesses_remaining} guesses remaining."
    end
  end

  def obtain_guess
    puts "Enter a number between #{@range.first} and #{@range.last}"
    guess = gets.chomp.to_i
    loop do
      if @range.cover?(guess)
        break
      else
        puts "Invalid Guess"
        guess = gets.chomp.to_i
      end
    end
    guess
  end

  def evaluate_guess(guess)
    return :win if guess == @magic_number
    return :high if guess > @magic_number
    :low
  end

end

game = GuessingGame.new(501, 1500)
game.play