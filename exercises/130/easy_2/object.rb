require 'pry'
# - take an array and object of some sort and a block
# - yield each element and the object to the block
# - should return the final value of the object
# - if array is empty, should return original object passed as it second argument


def each_with_object(array, object)
  array.each { |element|yield(element, object) }
  object
end


# Examples

result = each_with_object([1, 3, 5], []) do |value, list|
  list << value**2
end
p result == [1, 9, 25]


result = each_with_object([1, 3, 5], []) do |value, list|
  list <<(1..value).to_a
end
p result == [[1], [1, 2, 3], [1, 2, 3, 4, 5]]

result = each_with_object([1, 3, 5], {}) do |value, hash|
  hash[value] = value**2
end
p result == {1 => 1, 3 => 9, 5 => 25}

result = each_with_object([], {}) do |value, hash|
  hash[value] = value *2
end
p result == {}