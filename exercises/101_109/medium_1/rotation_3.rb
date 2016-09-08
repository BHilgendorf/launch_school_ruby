def rotate(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, qty)
  temp_array = number.to_s.chars
  first_array = temp_array[0, (temp_array.size - qty)]
  second_array = temp_array[-qty..-1]
  (first_array + rotate(second_array)).join.to_i
end

def max_rotation(number)
  counter = number.to_s.size
  loop do
    number = rotate_rightmost_digits(number, counter)
    counter -= 1
    break if counter < 2
  end
  number
end

p max_rotation(735291)
p max_rotation(3)
p max_rotation(35)
p max_rotation(105)
p max_rotation(8_703_529_146) 

