# 1. Add two strings together that, when concatenated, return your first and last name as your full name in one string.
puts "betsy " +"hilgendorf"

#2. Use the module operator, division or a combination of both to take a 4 digit number and fine 1) the thousands nubmer
# 2) the hundreds 3) the tens and 4) the ones.
puts 5280 / 1000
puts 5280 % 1000 / 100
puts 5280 % 100 /10
puts 5280 % 10

#3. Write a program that uses a has to store a list of movies with the year they came out. Then use the puts
#command to make your program print out the year of each movie. 
movies = { goonies: '1984', the_martian: '2016', ferris_buellers_day_off: '1994', social_network: '2012'}

puts movies[:goonies]
puts movies [:the_martian]
puts movies [:ferris_buellers_day_off]
puts movies [:social_network]

#4) Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3
movies =[1984,2016,1994,2012]
puts movies [0]
puts movies [1]
puts movies [2]
puts movies [3]

#5 Write a program that outputs the factorial of the number 5,6,7 and 8.
puts 5*4*3*2*1
puts 6*5*4*3*2*1
puts 7*6*5*4*3*2*1
puts 8*7*6*5*3*2*1


#6 Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result
puts 26.2*26.2
puts 13.1*13.1
puts 6.2*6.2

#7 What does the following error message tell you?
# "SyntaxError: (irb) :2: syntax error, unexpected ')', expecting '}'
# from /user/local/rvm/rubies/ruby -2.0.0-rc2/bin/irb:16:in' <main>"

#There is a missing closing } on line 2 within the Ruby code
