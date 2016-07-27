def triangle(number)
  start = 1
  loop do
    puts (" " * (number - start)) + ("*" * start)
    start += 1
    break if start > number
  end
end

triangle(5)
triangle(9)

# Further exploration

# def dif_triangle(number)
#   counter = number
#   number.times do |n|
#     puts ('*' * counter)
#     counter -= 1
#   end
# end


# dif_triangle(5)
# dif_triangle(10)