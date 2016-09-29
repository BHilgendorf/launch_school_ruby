# In the make_one_year_older method, we have used 'self'. 
# What does self refer to here?

class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age = 0
  end

  def make_one_year_older
    self.age += 1
  end

end

# Self refers to the instance object calling the make_one_year_older method