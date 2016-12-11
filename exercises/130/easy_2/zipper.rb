# - take two arrays as arguments
# - returns NEW array
# - result should be a nested array, in which each element of the new array
#   is made of of [array1[index], array2[index]]


def zip(array_1, array_2)
  result = []
  array_1.each_index do |index|
    result << [array_1[index], array_2[index]]
  end 
result
end


# Test Cases

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]