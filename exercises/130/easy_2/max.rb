require 'pry'
# - iterates over collection, passing each element to the block
# - method returns the element, for which the block returned the largest value

# - solution
#   iterate through array, passing each value to the block, compare the return value to max_value
#   if the return value is larger than max_value, then max_value is replaced by that element
#   method returns the max_value variable


def max_by(array)
  return nil if array.empty?

  max_element = array.first
  max_return = yield(array.first)

  array[1..-1].each do |element|
    block_return = yield(element)
    if block_return > max_return
      max_element = element 
      max_return = block_return
    end
  end
  max_element
end



# Test Cases
p max_by([1, 5, 3]) { |value| value + 2 }
p max_by([1, 5, 3]) { |value| 9 - value }
p max_by([1, 5, 3]) { |value| (96 - value).chr }
p max_by([[1, 2], [3, 4, 5], [6]])  { |value| value.size }
p max_by([-7])      { |value| value * 3 }
p max_by([])        { |value| value + 5 }