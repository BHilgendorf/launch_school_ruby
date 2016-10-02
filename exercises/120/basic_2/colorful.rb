class Cat
  attr_reader :name

  CAT_COLOR = %w(purple orange brown black white calico)

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name} and I'm a #{CAT_COLOR.sample} cat!"
  end

end

kitty = Cat.new("Sophie")
kitty.greet