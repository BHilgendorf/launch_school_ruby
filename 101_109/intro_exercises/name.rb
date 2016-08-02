# 1 Write a program named called name.rb that asks the user to tryp in their name and then prints out a greeting message whith their name included

puts "Type in your name"
name = gets.chomp
puts "Well, hello " + name

#3 Add another section onto name.rb that prints the name of the user 10 times.
10.times do
  puts name
end

#4 Modify the program so it asks the user for their first name, saves it into a variable, then does the same for the last name. Then outputs their full name all at once.
puts "What is your first name"
first_name = gets.chomp
puts "What is your last name"
last_name = gets.chomp
puts first_name + last_name

#5 what does X print to screen in each?
#A: in first program, it will print 3 as X was defined outside the scope 
#A: in the second program, it will give an error message as x was defined inside the scope of the do/end and cannot be accesssed outside


#6. What does the following error message tell you?
#A: on line 3 the program is trying to references an undefined variable names 'shoes', that has not been defined or is outside the scope
