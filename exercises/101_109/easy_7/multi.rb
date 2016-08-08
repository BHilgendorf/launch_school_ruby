def show_multiplicative_average(array)
  multi = array.inject(:*)
  average = (multi / (array.length).to_f)
  puts "The results is #{format('%.3f', average)}"
end

puts show_multiplicative_average([3,5])
puts show_multiplicative_average([2,5,7,11,13,17])