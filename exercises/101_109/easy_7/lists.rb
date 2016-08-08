# def multiply_lists(array1, array2)
#   result = []
#   counter = 0
#   loop do
#     result << array1[counter] * array2[counter]
#     counter += 1
#     break if counter == array1.length
#   end
#   result
# end

# def multiply_lists(arr1, arr2)
#   result = []
#   arr1.each_with_index do |item, index|
#     result << item * arr2[index]
#   end
#   result
# end

# Further Exploration
def multiply_lists(arr1, arr2)
  arr1.zip(arr2).map {|item| item.inject(:*)}
end


p multiply_lists([3, 5, 7], [9, 10, 11])