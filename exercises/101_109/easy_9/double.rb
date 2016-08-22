# # Initial solution --------------------------------
def double?(number)
  number_string = number.to_s
  half = number_string.length / 2
  first_half = number_string[0, half]
  second_half = number_string[half, number_string.length]
  first_half  == second_half
end

def twice(number)
  double?(number) ? number : (number * 2)
end


# Refactored and compact -----------------------
# def left_side(number)
#   number.to_s[0, (number.to_s.length / 2)]
# end

# def right_side(number)
#   number.to_s[(number.to_s.length / 2), number.to_s.length]
# end

# def twice(number)
#   left_side(number) == right_side(number) ? number : (number * 2)
# end




p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789


