def negative(number)
  number > 0 ? number * -1 : number
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0