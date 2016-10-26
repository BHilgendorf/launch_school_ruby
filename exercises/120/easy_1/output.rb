# class Pet
#   attr_reader :name

#   def initialize(name)
#     @name = name.to_s
#   end

#   def to_s
#     @name.upcase!
#     "My name is #{@name}."
#   end
# end

# name = "Fluffy"
# fluffy = Pet.new(name)
# puts fluffy.name
# puts fluffy
# puts fluffy.name
# puts name


=begin
output is:
puts fluffy.name      => Fluffy
puts Fluffy           => My name is FLUFFY
puts fluffy.name      => FLUFFY
puts name             => FLUFFY
=end

# Refacotred Code

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

# name = "Fluffy"
# fluffy = Pet.new(name)
# puts fluffy.name
# puts fluffy
# puts fluffy.name
# puts name

=begin
new output is: 
puts fluffy.name      => Fluffy
puts Fluffy           => My name is FLUFFY
puts fluffy.name      => Fluffy
puts name             => Fluffy
=end

#Further exploration

name = 42
fluffy = Pet.new(name)
name += 1
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

# The local variable name and the instance variable name are pointing at different
# object ID's. Therefore changing the local variable by increasing it, will not
# affect the instance variable

