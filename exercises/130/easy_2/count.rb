# - iterates over each element in the collection
#   - returns the number of elements for which the block returns a truthy value

# - should take 0 or more arguments
# - return the total number of arguments for which the block returns true


# Solution
# - initialize a counter to 0
# - iterate through the collection yielding each element to the block
# - if the block returns a truthy value, increment the counter by 1
# - return the counter

def count(*array)
  total = 0
  array.each { |element| total += 1 if yield(element) }
  total
end


# Test Cases

p count(1, 3, 6)  { |value| value.odd? } == 2
p count(1, 3, 6)  { |value| value.even? } == 1
p count(1, 3, 6)  { |value| value > 6 } == 0
p count(1, 3, 6)  { |value| true } == 3
p count()         { |value| true } == 0
p count(1, 3, 6)  { |value| value - 6} == 3