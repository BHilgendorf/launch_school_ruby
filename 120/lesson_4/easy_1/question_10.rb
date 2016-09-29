# If we have the class below, what would you need to call to create a new 
# instance of this class.

class Bag
  def initialize(color, material)
    @ color = color
    @material = material
  end
end


duffle = Bag.new("black", "cordura")

# would need to call Bag.new followed by information to satisfy the two arguments
# in teh initialize method.