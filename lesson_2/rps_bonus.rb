VALID_CHOICES = { rock: "r", paper: "p", scissors: "s", lizard: "l", spock: "k" }.freeze

WINNING_RULES = { scissors: [:paper, :lizard],
                  paper: [:rock, :spock],
                  rock: [:lizard, :scissors],
                  lizard: [:spock, :paper],
                  spock: [:scissors, :rock] }.freeze

def clear_screen
  system('clear') || system('cls')
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WINNING_RULES[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    "You get a point!"
  elsif win?(computer, player)
    "Computer gets a point!"
  else
    "Tie Round"
  end
end

FINAL_SCORE = 5
clear_screen
prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock!")
prompt("Each round the winner gets a point. First one to #{FINAL_SCORE} wins!")

loop do
  player_score = 0
  computer_score = 0
  loop do
    choice = ""
    loop do
      prompt("Current Score: Player: #{player_score}  Computer: #{computer_score}")
      prompt("Choose One: R => Rock, P => Paper, S => Scissors, L => Lizard, K => Spock")
      choice = gets.chomp.downcase

      break if VALID_CHOICES.value?(choice)
      prompt("That is not a valid choice.")
    end
    choice = VALID_CHOICES.key(choice)

    computer_choice = VALID_CHOICES.keys.sample
    puts("You chose: #{choice} Computer chose: #{computer_choice}")
    result = display_results(choice, computer_choice)
    prompt(result.to_s)

    if win?(choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, choice)
      computer_score += 1
    end

    break if player_score >= FINAL_SCORE || computer_score >= FINAL_SCORE
    prompt("Please hit enter to continue")
    gets
    clear_screen
  end

  if player_score >= FINAL_SCORE
    prompt("You win the game.")
  else
    prompt("Computer wins the game.")
  end

  answer = ""
  prompt("Do you want to play again? Please enter Y or N")
  loop do
    answer = gets.chomp.upcase
    break if answer == "Y" || answer == "N"
    puts "Y or N only please"
  end
  break unless answer == "Y"
  clear_screen
end
