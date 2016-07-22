# Build a program that randomly generates and prints Teddy's age. 
# To get the age, you should generate a random number between 20 and 200.

# age = (20..200).to_a.sample
# puts "Teddy is #{age} years old!"

# Modify this program to ask for a name, and then print the age for that person. 
# For an extra challenge, use "Teddy" as the name if no name is entered.
# puts "What is your name?"
# name = gets.chomp

# name == "" ? name = "Teddy" : name
# age = rand(20..200)

# puts "#{name} is #{age} years old"

# #------------------------------------------------------------------
# How big is the room?

# Build a program that asks a user for the length and width of a room in meters 
# # and then displays the area of the room in both square meters and square feet.
# SQMETERS_TO_SQFEET = 10.7639


# puts "Please enter the length in Meters:"
# length_meters = gets.chomp.to_f

# puts "Please enter the width in Meters:"
# width_meters = gets.chomp.to_f

# square_meters = (length_meters * width_meters).round(2)
# square_feet = ((length_meters * width_meters) * SQMETERS_TO_SQFEET).round(2)
# puts "The area is #{square_meters} square meters. (#{square_feet} square feet)."


# #further exploration
# INCHES_TO_CM = 2.54
# FEET_TO_INCHES = 12

# puts "Please enter the length in feet:"
# length_feet = gets.chomp.to_f

# puts "Please enter the width in feet:"
# width_feet = gets.chomp.to_f

# square_feet = (length_feet * width_feet).round(2)
# square_inches = ((length_feet * FEET_TO_INCHES) * (width_feet * FEET_TO_INCHES)).round(2)
# square_centimeters = ((length_feet * FEET_TO_INCHES * INCHES_TO_CM) * 
#                     (width_feet * FEET_TO_INCHES * INCHES_TO_CM)).round(2)

# puts "The area is #{square_feet} square feet."
# puts "The area is #{square_inches} square inches."
# puts "The area is #{square_centimeters} square centimeters."

#---------------------------------------------------------------

# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
# The program must compute the tip and then display both the tip and the total amount of the bill.

# puts "Please enter the amount of the bill:"
# bill_amount = gets.chomp.to_f

# puts "Please enter the tip percentage:"
# tip_percentage = (gets.chomp.to_f)/100

# tip_amount = (bill_amount * tip_percentage).round(2)
# total = bill_amount + tip_amount

# puts "The amount of the tip should be: $" + sprintf("%.2f", tip_amount.to_s)
# puts "The total should be: $" + sprintf("%.2f", total.to_s)



#------------------------------------------------------------------
# #When Will I Retire

# puts "What is your age?"
# current_age = gets.to_i

# puts "What age would you like to retire?"
# retirement_age = gets.to_i

# current_year = Time.now.year
# working_years = retirement_age - current_age
# retirement_year = current_year + working_years


# puts "It is #{current_year}. You will retire in #{retirement_year}"
# puts "You only have #{working_years} of work to go!"

# #--------------------------------------------------------------------

# Greeting a User

# Write a program that will ask for user's name. 
# The program will then greet the user. If the user writes "name!" than the computer yells back to the user

# puts "What is your name?"
# name = gets.chomp

# if name[-1] == "!"
#   name = name.chop
#   puts "HELLO #{name.upcase}. WHY ARE YOU YELLING?"
# else
#   puts "Hello #{name}"
# end


#Further Exploration of Greeting a user

# puts "What is your name?"
# name = gets.chomp!

# if name[-1] == "!"
#   name.chop!
#   puts "HELLO #{name.upcase}. WHY ARE YOU YELLING!"
# else
#   puts "Hello #{name}."
# end

# -----------------------------------------------------------------------

# Odd Numbers
# # Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

# Option 1
# arr = (1..99).to_a
# puts arr.select { |num| num.odd?}

#Option 2
# num = 1
# loop do
#   puts num if num.odd?
#   num += 1
#   break if num == 100
# end

#-----------------------------------------------------------------------


# Even Numbers
# Print the even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

# # option 1
# arr = (1..99).to_a
# puts arr.select { |num| num.even?}

# #option 2
# num = 1
# while num <=98
#   puts num if num.even?
#   num += 1
# end

#------------------------------------------------------------------------
#Sum or Product of Consecutive Integers

# Write a program that asks the user to enter an integer greater than 0
# then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

##Original answer
# puts "Please enter an integer greater than 0"
# number = gets.to_i

# puts "Press 'A' to add all numbers between 1 and #{number}."
# puts "Press 'M' to multiply all numbets between 1 and #{number}"
# choice = gets.chomp

# if choice.downcase == 'a'
#   sum = (1..number).inject(:+)
#   puts "The sum of the integers between 1 and #{number} is #{sum}"
# elsif choice.downcase == 'm'
#   product = (1..number).inject(:*)
#   puts "The product of the integers between 1 and #{number} is #{product}"
# else
#   puts "That was not an option."
# end


## Refactored answer with methods and validation
# def valid_number?(number)
#   number > 0
# end

# def valid_operation?(choice)
#   choice == 'a' || choice == 'm'
# end

# def calculate_sum(number)
#   (1..number).inject(:+)
# end

# def calculate_product(number)
#   (1..number).inject(:*)
# end

# puts "Please enter an integer greater than 0"
# number = gets.to_i

# if !valid_number?(number)
#   loop do
#     puts "Try again. Number above 0 please"
#     number = gets.to_i
#     break if valid_number?(number)
#   end
# end


# puts "\nPress 'A' to add all numbers between 1 and #{number}."
# puts "Press 'M' to multiply all numbets between 1 and #{number}"
# choice = gets.chomp
# choice.downcase!

# if !valid_operation?(choice)
#   loop do
#     puts "Please enter only 'a' or 'm' to choose and operation."
#     choice = gets.chomp
#     choice.downcase!
#     break if valid_operation?(choice)
#   end
# end

# if choice == 'a'
#   sum = calculate_sum(number)
#   puts "The sum of the integers between 1 and #{number} is #{sum}"
# else
#   product = calculate_product(number)
#   puts "The product of the integers between 1 and #{number} is #{product}"
# end

#---------------------------------------------------------------------------

# The output will be:
# BOB
# BOB

# Both the name and save_name variables were pointing to the same object. When the .upcase!
# method was called on name, it changed the value of the object that both variables were 
# pointing to. 


#---------------------------------------------------------------------------

#output will be:

# Moe  
# Larry 
# CURLY
# CHEMP 
# Harpo 
# CHICO 
# Groucho 
# Zeppo

# In the first iteration of through array1, each references to the value is copied into array 2.
# After that, both array1 and array2 are pointing to the same string objects. Any change made to the
# value of that object, will be reflected in both arrays




