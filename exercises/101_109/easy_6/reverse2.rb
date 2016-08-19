# Initial solution
def reverse(array)
  new_list = []
  counter = array.size - 1
  loop do
    new_list << array[counter]
    counter -= 1
    break if counter < 0
  end
  new_list
end

#refactored solution
def reverse(array)
  result = []
  array.reverse_each { |element| result << element}
  result
end

# Using inject
def reverse(array)
  array.inject([]) {|result, element| result.unshift element}
end

# unshift method
def reverse(array)
  result = []
  array.each {|element| result.unshift(element)}
  result
end


p list = [1,2,3]
p new_list = reverse(list)
p list.object_id != new_list.object_id
p list == [1,2,3]
p new_list == [3,2,1]