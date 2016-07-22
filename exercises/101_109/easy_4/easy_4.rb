# #Short Long Short

# # Write a method that takes two strings as arguments, determines the longest of the two strings, 
# # and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. 
# # You may assume that the strings are of different lengths.

# def short_long_short(string_1, string_2)
#   if string_1.length > string_2.length
#     string_2 + string_1 + string_2
#   else
#     string_1 + string_2 + string_1
#   end
# end

# #alternatively
# def short_long_short2(string1, string2)
#   string1.length > string2.length ? string2 + string1 + string2 : string1 + string2 + string1
# end

# short_long_short('abc', 'defgh')
# short_long_short('abcde', 'fgh')
# short_long_short('', 'abc')

# #----------------------------------------------------------------------------------------
# #What Century is That?

# # Write a method that takes a year as input and returns the century. The return value should be a string that 
# # begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# # New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# def century(year)
#   century = 1 if (0..100).include?(year)
#   if year % 100 == 0
#     century = year / 100
#   else
#     century = (year / 100) + 1
#   end
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return "th" if [11, 12, 13].include?(century % 100)
#   ending_number = century % 10
  
#   case ending_number
#   when 1 then  "st"
#   when 2 then  "nd"
#   when 3 then  "rd"
#   else
#     "th"
#   end
# end


# p century(2001)  # => 21st
# p century(1965) #=> 20th
# p century(256)
# p century(5)
# p century(1052)
# p century(1127)
# p century(11201)

# #---------------------------------------------------------------------------------------

# Leap Years (Part 1)

# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, 
# unless the year is also divisible by 100. If the year is evenly divisible by 100, 
# then it is not a leap year unless the year is evenly divisible by 400.


# def leap_year?(year)
#   (year % 400 == 0) || (year % 4 == 0) && (year % 100 != 0)
# end

# leap_year?(2016)  #=> true
# leap_year?(2015) #=> false

# #alternate solutions with year tests in reverse order. Personally find this way more complex.

# # def leap_year?(year)
# #   if year % 4 == 0
# #     if year % 100 == 0
# #       if year % 400 == 0
# #         true
# #       else
# #         false
# #       end
# #     else
# #       true
# #     end
# #   else
# #     false
# #   end
# # end

# #---------------------------------------------------------
# #Leap Years (Part 2)


# # The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, 
# # the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.


# def leap_year?(year)
#   if year >= 1752
#     (year % 400 == 0) || (year % 4 == 0) && (year % 100 != 0)
#   else
#     year % 4 == 0 ? true : false
#   end
# end

## ---------------------------------------------------------------

# # Multiples of 3 and 5

# # Write a method that computes the sum of all numbers between 1 and some other number that are a multiple of 3 or 5. 
# # For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# def multisum(number)
#   nums = (1..number).select {|digit| ((digit % 3 == 0) || (digit % 5 == 0))}
#   sum = nums.inject(:+)
# end

# # #Alternatively

# # def multisum(number)
# #   nums = (1..number).to_a
# #   sum = 0
# #   nums.each do |digit|
# #     if digit % 3 == 0 || digit % 5 == 0
# #       sum += digit
# #     end
# #   end
# #   sum
# # end

# # #Alternatively

# # def multisum(number)
# #   sums = (1..number).select {|digit| (digit % 3 == 0) || (digit % 5 == 0) }.inject(:+)
# # end

##-------------------------------------------------------------------------------------------
# # Running Totals

# # Write a method that takes an Array of numbers, and returns an Array with the same number of 
# # elements, and each element has the running total from the original Array.

# def running_total(array)
#   total = 0
#   array.map do {|number|  total += number }
# end

# arr = [2,5,13]
# arr = [14, 11, 7, 15, 20]


# #alternatively done using #each_with_object
# def running_total(array)
#   total = 0
#   array.each_with_object([]) { |number, arr| arr << total += number}
# end

#-----------------------------------------------------------






