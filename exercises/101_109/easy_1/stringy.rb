# initial solution
# def stringy(number)
#   string = ''
#   counter = 1
#   loop do
#     string << '1' if counter.odd?
#     string << '0' if counter.even?
#     counter += 1
#     break if counter > number
#   end
#   string
# end

# refactored
def stringy(number)
  string = ''
  number.times do |counter|
    string << '1' if counter.even?
    string << '0' if counter.odd?
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Further exploration
#  If the method is called with this argument set to 0, the method should 
#  return a String of alternating 0s and 1s, but starting with 0 instead of 1

# def stringy(number, order = 1)
#   string = ''
#   if order == 1
#     number.times do |counter|
#       string << '0' if counter.even?
#       string << '1' if counter.odd?
#     end
#   else
#     number.times do |counter|
#       string << '1' if counter.even?
#       string << '0' if counter.odd?
#     end
#   end
#   string  
# end






