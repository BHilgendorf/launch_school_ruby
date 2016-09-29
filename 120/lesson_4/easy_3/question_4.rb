#How could we go about changing the to_s output on this method to look like this:
# I am a tabby cat? (this is assuming that "tabby" is the type we passed in during 
#initialization).


class Cat
  def initialize(type)
    @type = type
  end

  # overwrite the to_s method
  def to_s
    "I am a #{@type} cat."
  end

  #or can create new method
  def display_type
    "I am a #{@type}"
  end
end


bob = Cat.new("tabby")
puts bob
puts bob.display_type