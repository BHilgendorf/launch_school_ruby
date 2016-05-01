# calculates the montly payment on an auto loan with user inputs of loan amount, APR and loan duration.

def clear_screen
  system('clear') || system('cls')
end

def integer?(num)
  num.to_i.to_s == num && num.to_i > 0
end

def float?(string)
  Float(string)
rescue ArgumentError
  nil
end

puts "Welcome to the Auto Loan Calculator"
puts "-----------------------------------"

loop do # main loop
  loan_amount = " "
  puts "Please enter the loan amount:"

  loop do
    loan_amount = gets.chomp

    if float?(loan_amount) && loan_amount.to_f > 0
      loan_amount = loan_amount.to_f
      break
    else
      puts "Please enter a positive amount, no need for $ or commas or periods."
    end
  end

  apr = " "
  puts "Enter Annual Percentage Rate. (Ex: For 4% enter 4.0  For 3.5% enter 3.5)"

  loop do
    apr = gets.chomp

    if float?(apr)
      apr = apr.to_f
      break
    else
      puts "That is not a valid percentage rate."
    end
  end

  months = " "
  puts "Enter the loan duration (in number of months):"

  loop do
    months = gets.chomp

    if integer?(months)
      months = months.to_i
      break
    else
      puts "That is not a valid loan duration. Please enter the number of months:"
    end
  end

  if apr == 0
    monthly_payment = loan_amount / months
  else
    monthly_rate = apr / 12 / 100
    monthly_payment = (loan_amount * ((monthly_rate * (1 + monthly_rate)**months) /
        ((1 + monthly_rate)**months - 1)))
  end

  puts "Your monthly payment is: $#{format('%02.2f', monthly_payment)}"
  puts "Do you want to perform another calculation? (Y or N)"

  answer = ""
  loop do
    answer = gets.chomp.upcase
    break if answer == 'Y' || answer == 'N'
    puts "Y or N only please"
  end
  break unless answer == 'Y'

  clear_screen
end

puts "Goodbye!"
