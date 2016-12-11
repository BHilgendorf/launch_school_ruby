# - method takes and array as argument
# - iterates through array, takine 2 elements at a time
# - should yield each consecutive pair of elements to the block
# - continues to iterate until last element of array is included as the last element
# - method returns nil


def each_cons(array)

  array.each_with_index do |element, index|
    break if index + 1 >= array.size
    yield(element, array[index + 1])
  end
end

# Test cases

# Example 1 --------------------------------------------
hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
    hash[value1] = value2
end
puts result == nil
p hash == {1 => 3, 3 => 6, 6 => 10 }

# Example 2 -------------------------------------------
hash = {}
each_cons([]) do |value1, value2|
  hash[value1] == value2
end
puts hash == {}

# Example 3 ---------------------------------------------
hash = {}
each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}