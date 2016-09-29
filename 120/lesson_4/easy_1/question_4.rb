# If we have a class AngryCat how do we create a new instance of this class?

# The AngryCat class might look something like this:

class AngryCat
  def hiss
    puts "Hisssss!!"
  end
end

milo = AngryCat.new   # create a new instance of the AngryCat class
puts milo.hiss

puts AngryCat.new.hiss  #also creates new instnace of the AngryCat Class