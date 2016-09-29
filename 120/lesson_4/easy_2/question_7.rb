class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

#Exaplain what @@cats_count variable does and how it works.

# This is a Class Variable. It keeps a count of the number of objectss
# int eh cat class by incrementing the variable each time a new Cat object
# is initialized.

bob = Cat.new("tabby")
puts Cat.cats_count

callie = Cat.new("calico")
puts Cat.cats_count