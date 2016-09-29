# Which of these two classes has an instance variable and how do you know?

class Fruit
  def initialize(name)
    name = name               #local variable
  end
end

class Pizza
  def initialize(name)
    @name = name              # instance variable. It begins with @
  end
end


cheese = Pizza.new("Extra Cheese")
orange = Fruit.new("Blood Orange")


#can also call method .instnace_variables to see if that object has one
p cheese.instance_variables   #=> [:name]
p orange.instance_variables   #=> []  