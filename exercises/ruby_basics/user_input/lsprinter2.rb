input = nil

loop do
  puts "How many output lines do you want? Enter a number >= 3 (Q to quit)"
  input_string = gets.chomp
  number_of_lines = input_string.to_i
  if input_string.downcase == 'q'
    break
  elsif number_of_lines < 3
    puts "That is not enough lines"
    next
  else
    number_of_lines.times {puts "Launch School is the best"}
  end
end


