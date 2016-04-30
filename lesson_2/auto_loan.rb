# calculates the montly payment on an auto loan with user inputs of loan amount, APR and loan duration.

def integer?(num)
  num.to_i.to_s == num && num.to_i > 0
end

def float?(num)
  num.to_f.to_s == num && num.to_f > 0
end

puts "Welcome to the Auto Loan Calculator"
puts "-----------------------------------"

loop do # main loop
  loan_amount = " "
  loop do
    puts "Please enter the loan amount:"
    loan_amount = gets.chomp

    if integer?(loan_amount)
      loan_amount = loan_amount.to_i
      break
    else
      puts "That is not a valid amount. Please enter loan amount:"
    end
  end

  apr = " "
  loop do
    puts "Enter Anual Percentage Rate. (Ex: For 4% enter 4.0  For 3.5% enter 3.5)"
    apr = gets.chomp

    if float?(apr)
      apr = apr.to_f
      break
    else
      puts "That is not a valid percentage rate. Please enter the rate: "
    end
  end

  months = " "
  loop do
    puts "Enter the loan duration (in number of months):"
    months = gets.chomp

    if integer?(months)
      months = months.to_i
      break
    else
      puts "That is not a valid loan duration. Please enter the number of months:"
    end
  end

  monthly_rate = apr / 12 / 100
  monthly_payment = (loan_amount * ((monthly_rate * (1 + monthly_rate)**months) /
      ((1 + monthly_rate)**months - 1))).round(2)

  puts "The monthly payment will be:$#{monthly_payment}"
  puts "Do you want to perform another calculation? (Y to calculate again)"
  answer = gets().chomp()
  break unless answer.downcase().start_with?('y')
end

puts "Enjoy your new car!"
puts "Goodbye!"
