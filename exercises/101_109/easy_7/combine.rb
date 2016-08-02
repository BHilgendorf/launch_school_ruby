def interleave(array1, array2)
  array1.zip(array2).flatten
end

# def interleave(array1, array2)
#   combined = []
#   counter = 0
#   loop do
#     combined << array1[counter]
#     combined << array2[counter]
#     counter += 1
#     break if counter == array1.size
#   end
#   combined
# end

p interleave([1, 2, 3], ['a', 'b', 'c'])