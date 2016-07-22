# # Searching 101
# Write a program that solicits 6 numbers from the user, 
# then prints a message that describes whether or not the 6th number appears amongs the first 5 numbers

# numbers = []
# puts "Enter the 1st number:"
# numbers << gets.to_i
# puts "Enter the 2nd number:"
# numbers << gets.to_i
# puts "Enter the 3rd number:"
# numbers << gets.to_i
# puts "Enter the 4th number:"
# numbers << gets.to_i
# puts "Enter the 5th number:"
# numbers << gets.to_i
# puts "Enter the last number:"
# last_number = gets.to_i

# if numbers.include? last_number 
#   puts "The number #{last_number} does appear in #{numbers}."
# else
#   puts "The number #{last_number} does NOT appear in #{numbers}."
# end

#-----------------------------------------------------------------------------------
# Arithmetic Integer

# Write a program that prompts the user for two positive integers, 
# and then prints the results of the following operations on those two numbers: 
# # addition, subtraction, product, quotient, remainder, and power.

# puts "Enter the first number:"
# num1 = gets.to_i
# puts "Enter the second number:"
# num2 = gets.to_i

# puts "#{num1} + #{num2} = " + (num1 + num2).to_s
# puts "#{num1} - #{num2} = " + (num1 - num2).to_s 
# puts "#{num1} * #{num2} = " + (num1 * num2).to_s

# if num2 == 0
#   puts "#{num1} cannot be divided by #{num2}"
# else
#   puts "#{num1} / #{num2} = " + (num1 / num2).to_s
# end

# if num2 == 0
#   puts "#{num1} cannot be divided by #{num2}, therefore there is no remainder."
# else
#   puts "#{num1} % #{num2} = " + (num1 % num2).to_s
# end

# puts "#{num1} ** #{num2} = " + (num1 ** num2).to_s

# #changing to allow for floats, allows for division by zero. Result of float/0 = infinity

#----------------------------------------------------------------------------------------

# #Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. 
# #Spaces should not be counted as a character.

# puts "Please enter a word or words:"
# words = gets.chomp

# letters = words.chars
# count = 0
# letters.each do |letter|
#   count += 1 if letter != " "
# end
# #alternative way to count
# # number_of_characters = input.delete(' ').size

# puts " \"#{words}\"  has #{count} letters in it."

#-----------------------------------------------------------------------------------
#Multiplying two numbers
#Create a method that takes two arguments, multiplies them together, and returns the result.

# def multiply(num1, num2)
#   num1 * num2
# end

# #If first arguement is string:
# #multiply("hi", 2)
# #=> "hihi"

# #if first argument is array:
# #multiply([2,3,4,5], 3)
# #=> [2, 3, 4, 5, 2, 3, 4, 5, 2, 3, 4, 5]

#-------------------------------------------------------------------------------
# #Squaring Arguments
# #Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument

# def multiply(num1, num2)
#   num1 * num2
# end

# def square(number)
#   multiply(number, number)
# end

# #Further Exploration

# # What if we wanted generalize this method to a "power to the n" type method: 
# # cubed, to the 4th power, to the 5th, etc. How would we go about doing so while still using the multiply method?

# def power(number, power)
#   result = number
#   (power -1).times { result = multiply(result, number)}  
#   result
# end

#----------------------------------------------------------

# #Exclusive Or
# #The || operator returns true if either or both of its operands are true, false if both operands are false. 
# #The && operator returns true if both of its operands are true, and false if either operand is false. 
# #This works great until you need only one of two conditions to be true, the so-called exclusive or.

# # In this exercise, you will write a method named xor that takes two arguments, and returns true 
# # if exactly one of its arguments is true, false otherwise.

# def xor?(one, two)
#   return true if one && !two
#   return true if !one && two
#   false                           # if this is not included, method will return nil. want ? to evaluate to either true or false
# end

#---------------------------------------------------------------------

# #Odd Lists

# # Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. 
# # The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# def odd(array)
#   odds = []
#   array.each_with_index do |value, index|
#     if index == 0 || index.even?
#       odds << value
#     end
#   end
#   odds
# end

# odd([1,2,3,4,5,6])
# odd(['abc', 'def', 'xya', 'sdlkfjsd'])
# odd([])
# odd([123])

#------------------------------------------------------------------------------

#Palindromic Strings (Part 1)

# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. 
# Case matters, and all characters should be considered.

# def palindrome?(input)
#   input == input.reverse
# end

# palindrome?("madam")
# palindrome?("Madam")
# palindrome?("123321")
# palindrome?("Madam I'm adam")
# palindrome?([1,2,3,2,1])
# palindrome?([1,2,3,4,5])


#-------------------------------------------------------------------------
#  #Palindromic Strings (Part 2)

# # Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. 
# # This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters

# def alpha_numeric?(char)
#   alpha = ("a".."z").to_a + ("0".."9").to_a
#   alpha.include?(char)
# end

# def simple_string(words)
#   string = ""
#   words.downcase!
#   words.chars.each do |character|
#     if alpha_numeric?(character)
#       string << character.downcase
#     end
#   end
#   string
# end

# def palindrome?(input)
#   input == input.reverse
# end

# def real_palindrome?(input)
#   palindrome?(simple_string(input))
# end

# real_palindrome?('madam') 
# real_palindrome?('Madam') 
# real_palindrome?("Madam, I'm Adam") 
# real_palindrome?('356653') 
# real_palindrome?('356a653')
# real_palindrome?('123ab321')

# #--------------------------------
# # Solution from the exercises
# # def real_palindrome?(string)
# #   string = string.downcase.delete('^a-z0-9')
# #   palindrome?(string)
# # end
# #------------------------------

#----------------------------------------------------------------

# #Palindromic Numbers

# # Write a method that returns true if its integer argument is palindromic, false otherwise. 
# # A palindromic number reads the same forwards and backwards.

def palindrome?(input)
  input == input.reverse
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

p palindromic_number?(454)
p palindromic_number?(040)


# # Ruby considerings numbers beginning with a 0 (or multiple 0's) an "octal number". 
# # Calling .to_s on the number 040 will result in 32. 
# # Only way to handle this is to start with a string.


