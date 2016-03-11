#1). Write a program that prints a greeting message. This should contain a method called greeting that take a name as its paramater and returns a string

puts "please enter your name"
user_name = gets.chomp

def greeting(name)
  "hello, " + name + ". It's nice to meet you"
end

puts greeting(user_name)

# 2) what do the following expressions evaluate to?
  # 1. x =2  => 2
  # 2. puts x = 2 => nil
  # 3. p name = "joe" => "joe"
  # 4. four = "four" => "four"
  # 5. print something = "nothing" => nil


# 3) Write a program that include a method called multiply that takes two arguments and returns the product of those two numbers

def multiply(a,b)
  a * b
end

puts multiply(26,10)

#4) What will the following code print to the screen? Answer: Nothing will print. The method will not continue past the "return" line
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# 5 ) Modify the program so it will print words on the screen
def scream(words)
  puts words + "!!!!"
end

scream("Yippeee")

# It will return nil

#6 What does the error tell you? Answer: That the method requires 2 arguments and you only provided 1


