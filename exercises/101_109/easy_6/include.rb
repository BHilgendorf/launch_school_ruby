def include?(array, check)
  value = false
  array.each do |element|
    value = true if element == check
  end
  value
end

p include?([1,2,3,4,5], 3)
p include?([1,2,3,4,5], 6)
p include?([], 3)
p include?([nil], nil)
p include?([], nil)