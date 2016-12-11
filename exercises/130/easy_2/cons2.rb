# -update method to take an argument that specifies how many elements 
#  should be processed at a time
# 


def each_cons(array, increment)
  array.each_index do |index|
    break if index + increment - 1 >= array.size
    yield(*array[index..(index + increment -1)])
    # array[index..(index + increment -1)] is creating a new array of the range of elements
      #we want to pass to the block
    # the * operator converts the array to a list of arguments
    # the first elemetn is assigned to value 1, and the subsequent elements to *value2
  end
end

# Test Cases

hash = {}
each_cons([1, 3, 6, 10], 1) do |value|
  hash[value] = true
end
p hash

hash = {}
each_cons([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
p hash

hash = {}
each_cons([1, 3, 6, 10], 3) do |value1, *values|
  hash[value1] = values
end
p hash