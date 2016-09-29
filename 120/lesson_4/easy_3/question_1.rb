class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
   greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
   greet("Goodbye")
  end
end

# What happens in the following cases

#case 1----------------
hello = Hello.new
hello.hi

#output is Hello

#case 2 ---------------------
hello = Hello.new
hello.bye

#result is error for undefined method 'bye'

#case 3 ----------------------
hello = Hello.new
hello.greet

# result is argument error. No arguments were passed to the greet method

#case 4 ------------------
hello = Hello.new
hello.greet("goodbye")

# result will output goodbye

# Case 5 ----------------
Hello.hi

# result is error undefined method 'hi' for Hello class