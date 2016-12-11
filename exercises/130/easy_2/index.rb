# - iterates over collection, passing each element and index to block
# - value returned by block is NOT used
# - method returns a reference to the original collection

# - should yield each element and its index number to the block
# - should return a reference to the original array


def each_with_index(array)
  array.each_with_index { |item, index| yield(item, index)}
end

def each_with_index(array)
  index = 0
  while index < array.size
    yield(array[index], index)
    index += 1
  end
  array
end

# Examples

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]

# Output should be

# 0 -> 1
# 1 -> 3
# 2 -> 36
# true