

# Understanding the problem
#   - given a sorted array of integers as method argument
#   - return a new array that includes all the missing integers in order 
#     between first argument and last. (only include missing integers)


# Requirements
#   - method that takes array of integers
#   - returns new array
#     - contains only the intergers that are not included in given array that 
#       fall between the first number of given array and last number of given array
#     - if no numbers are missing, return an empty array
#     - if one number given, return an empty array

# Manual Solution
#   - compute full_array_set by creating new array containing all numbers between
#     first and last number in given array
#   - iterate through full_arry_set
#     if element is included in given array
#       next element
#     else 
#       add element to results array



# Test cases
# missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
# missing([1, 2, 3, 4]) =[]
# missing([1, 5]) == [2, 3, 4]
# missing([6]) == []

def missing(array)
  full_array_set = (array.first..array.last).to_a
  missing_numbers = []
  full_array_set.each do |number|
    if array.include?(number)
      next
    else
      missing_numbers << number
    end
  end
  missing_numbers
end

# # given solution
def missing(array)
  missing_numbers = []
  array.each_cons(2) do |first, second|
    missing_numbers.concat(((first +1 )..(second-1)).to_a)
  end
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []

# Further exploration
# write without using a method that retuquires a block

def missing(array)
  result = []
  num = array.first + 1
  loop do
    result << num if !array.include?(num)
      num += 1
    break if num == array.last
  end
  result
end

p missing([-3, -2, 1, 5])
p missing([1, 5])

