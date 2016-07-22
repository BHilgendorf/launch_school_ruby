def integer_to_string(number)
  string_array = []
  loop do
    string_array.unshift(number % 10)
    break if number / 10 == 0
    number = number / 10
  end
  string_array.join
end


def signed_integer_to_string(number)
  if number == 0
    integer_to_string(number)
  elsif number > 0
    integer_to_string(number).prepend("+")
  else
    integer_to_string(-number).prepend("-")
  end
end

p signed_integer_to_string(4321)
p signed_integer_to_string(-123)
p signed_integer_to_string(0)

