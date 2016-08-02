# 1) Write a method that returns the sum of two integers
# Given two numbers (intergers)

# perform addition operation

# print out results

# =======================

# START

# SET number1 = first number
# SET number2 = second number

# SET answer = number1 + number2

# PRINT answer

# END

# ==========================

# 2) Write a method that takes an array of strings, and returns a string that is all those strings concatenated together

# Given list of strings
# Iterate through the list of strings adding that iteration onto the running list
# print new list of strings

# ============================
# START

# SET words = array of strings
# SET str = empty string variable

# ITERATE through array of strings taking the first word in the array and appending it to 
#   new_list at the end. Drop first word off the array.

# END

# ====================================


# words = ["I", "AM", "A", "COLORADO", "NATIVE"]
# str = ""

# words.each do |word|
#   str = str + " " + word
# end

# puts str


# 3) Write a method that takes an array of intergers, and returns a new array with every other element

# Given an array of intergers
# Iterate through the list of arrays using a counter starting at o (index)
# Add in every other one (or every time the counter is even) to a new arry
# print new list of string

# =====================================

# START

# SET arr = to array of integers
# SET new_arr = to empty array

# WHILE iterator <= number of items in the array
#   IF index of item in array == 0 or is.odd
#     append (PUSH) that element to the new array
  
#   iterator = iterator + 1

# # END

# arr = [2,3,7,4,2,19,36,72,70,107]
# new_arr = []

# arr.each_with_index do |n,i|
#   if i == 0 || i.even?
#     new_arr << n
#   end
# end

# p new_arr






















