number_of_lines = nil

loop do
  puts "How many output lines do you want? Enter a number >= 3"
  number_of_lines = gets.chomp.to_i
  break if number_of_lines >= 3
  puts "That's not enough lines."
end

number_of_lines.times {puts "Launch School is the best"}

