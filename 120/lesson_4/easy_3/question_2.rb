# Manipulate code so Hello.hi doesn't error out

class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  # could modify the method to:
  def self.hi
    greeting = Greeting.new
    greeting.greet("Hello")
  end

  # or could add a specific class method
  # def self.hi
  #   puts "Hello class greeting"
  # end

end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

Hello.hi