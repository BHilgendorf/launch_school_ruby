# - method take array
# - block returns true or false depending on value of element passed to it
# - method returns count of "true" itmes
# - cannot not use count method



def count(array)
  sum = 0
  array.each { |element| sum += 1 if yield(element)}
  sum
end


# #Further exploration
# def count(array)
#   sum = 0
#   for element in 0..(array.size-1)
#     sum += 1 if yield(array[element])
#   end
#   sum
# end


# def count(array)
#   array.select { |element| yield(element)}.size
# end


# Test Cases

p count([1, 2, 3, 4, 5]) { |value| value.odd? }
p count([1, 2, 3, 4, 5]) { |value| value % 3 == 1 }
p count([1, 2, 3, 4, 5]) { |value| true }
p count([1, 2, 3, 4, 5]) { |value| false }
p count([])  { |value| value.even? }
p count(%w(Four score and seven))  { |value| value.size == 5}