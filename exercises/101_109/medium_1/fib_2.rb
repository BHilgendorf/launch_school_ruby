# 1, 1, 2, 3, 5, 8

# The long way
# def fibonacci(position)
#   return 1 if position == 1 || position == 2
#   return 2 if position == 3

#   first = 1
#   second = 1
#   fibonacci = first + second
#   counter = 3

#   loop do
#     first = second
#     second = fibonacci
#     fibonacci = first + second
#     counter +=1
#     break if counter == position
#   end
#   fibonacci
# end


#The refactored way
def fibonacci(position)
  first, last = [1, 1]
  3.upto(position) do
    first, last = [last, first + last]
  end
  last
end


p fibonacci(15)