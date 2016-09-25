def squared_sum(number)
   sum = 0
   1.upto(number) {|digit| sum += digit}
   squared_sum = sum**2
end


def sum_square(number)
  squared = 0
  1.upto(number) {|digit| squared += digit**2}
  squared
end

def sum_square_difference(number) 
  squared_sum(number) - sum_square(number)
end


p sum_square_difference(3) 
p sum_square_difference(10)
p sum_square_difference(1)
p sum_square_difference(100)