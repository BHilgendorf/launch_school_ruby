#1) Write a program that checks if the sequence of characters "lab" exists in the following strings. 
#  If it does exist, print out the word. - "laboratory" - "experiment" - "Pans Labrinth" - "elaborate" - "polar bear"

words = ["laboratory", "experiment", "Pans Labrinth", "elaborate", "polar bear"]

words.each do |test|
  if test =~ /lab/
    puts test
  end
end

#2) What will the following program print to the screen? What will it return?
#   def execute(&block)
#     block
#   end
#   execute {puts "Hello from inside the execute method!"}

# ANSWER: Nothing will print as no .call method was used. It will return a Proc object

#3) What is exception handling and what problem does it solve?
# ANSWER: It allows for programs to continue to run if an exception (or error) is encountered without stopping the program at the 
# location in the code the error occured.

#4) Modify the code in exercise 2 to make the block execute properly.
  def execute(&block)
     block.call
   end
   execute {puts "Hello from inside the execute method!"}

#5) Why does the following code...
#def execute(&block)
#     block.call
#   end
#   execute {puts "Hello from inside the execute method!"}
#give the following error when we run it?

# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
#from test.rb:5:in `<main>'

#ANSWER: There is no & in the paramater being passed to the method.