class Cat
  def initialize(name)
    @name = name
    puts "Hello! My name is #{@name}"
  end
end

kitty = Cat.new("Sophie")
kitty2 = Cat.new("Oliver")