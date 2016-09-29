class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age = 0
  end

  def make_one_year_older
    @age += 1                 #replace self with @
  end
end

#What is another way to write this method so you don't have to use self prefix

bob = Cat.new("tabby")
bob.make_one_year_older
p bob.age