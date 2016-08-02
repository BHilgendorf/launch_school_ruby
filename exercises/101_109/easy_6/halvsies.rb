def halvsies(array)
  first_array = array.slice(0, (array.size / 2.0).round)
  second_array = array.slice(first_array.size, array.size - first_array.size)
  [first_array, second_array]
end

p halvsies([1,2,3,4])
p halvsies([1,2,3,4,5])
p halvsies([5])
p halvsies([])