def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def get_number
  loop do
    puts "Please enter a positive or negative integer:"
    input = gets.chomp
    return input.to_i if valid_number?(input)
    puts "Invalid number. Please enter an integer other than 0."
  end
end

num_one = nil
num_two = nil

loop do
  num_one = get_number
  num_two = get_number
  break if num_one > 0 && num_two < 0 ||
           num_one < 0 && num_two > 0
  puts "Sorry. One integer must be positive and one must be negative."
  puts "Let's start over."
end

result = num_one + num_two
puts "#{num_one} + #{num_two} = #{result}"

