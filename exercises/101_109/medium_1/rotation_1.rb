# the long way
# def rotate_array(array)
#   return array if array.size == 1
#   result = []
#   first = array[0]
#   counter = 1
#   loop do
#     result << array[counter]
#     counter += 1
#     break if counter >= array.size
#   end
#   result << first
# end

# the short way

def rotate_array(array)
  array[1..-1] + [array[0]]
end

x = [1, 2, 3, 4]
p rotate_array(x)
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']


#futher exploration
def rotate_string(string)
  rotate_array(string.chars).join
end

p rotate_string "hello"


def rotate_number(number)
  (rotate_string(number.to_s)).to_i
end

p rotate_number(123456)
