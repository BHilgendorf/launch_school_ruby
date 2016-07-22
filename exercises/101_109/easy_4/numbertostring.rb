def integer_to_string(number)
  string_array = []
  loop do
    string_array.unshift(number % 10)
    break if number / 10 == 0
    number = number / 10
  end
  string_array.join
end

p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)