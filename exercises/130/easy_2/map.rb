# - iterates over the array, yielding each element to the block
# - block returns only one value at at time
# - returns a NEW array of all returned values
# - new array.size should be equal to that of original array.size

# Solution
#   -initialize a result array
#   -iterate through the array yielding each element to the block
#   - the return value of the block should be << to the result array

def map(array)
  result = []
  array.each { |element| result << yield(element) }
  result

# using Enumerable #reduce
  array.reduce([]) { |result, element| result << yield(element)}
end

# Test Cases

p map([1, 3, 6])  { |value| value**2 } == [1, 9, 36]
p map([])         { |value| true } == []
p map(['a', 'b', 'c', 'd'])  { |value| false} == [false, false, false, false]
p map(['a', 'b', 'c', 'd'])  { |value| value.upcase} == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a} == [[1], [1, 2, 3], [1, 2, 3, 4]]