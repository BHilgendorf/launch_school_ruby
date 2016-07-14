def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

puts "Please enter the numerator:"
numerator = gets.chomp
until valid_number?(numerator)
  puts "That is not a valid number. Try again"
  numberator = gets.chomp
end

puts "Please enter the denominator"
denominator = gets.chomp
until denominator.to_i > 0 && valid_number?(denominator)
  puts "That is not a valid number. Please enter a number above 0"
  denominator = gets.chomp
end

result = numerator.to_i / denominator.to_i

puts "#{numerator} divided by #{denominator} is: #{result}"