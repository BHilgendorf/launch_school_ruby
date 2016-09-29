class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age = age
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

# In the name cats_count method we have used "self". What does this refer to

Answer: this defines a class method. If refers to the class itself, in this
instance, the Cat class. 

Cats.cats_count