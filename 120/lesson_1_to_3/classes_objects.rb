# Lecture Classes and Objects
# Exercise 1

# class Person
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

# end

#Exercise 2

# class Person
#    attr_accessor :first_name, :last_name


#   def initialize(first_name, last_name = " ")
#     @first_name = first_name
#     @last_name = last_name
#   end

#   def name
#     "#{first_name} #{last_name}"
#   end

# end

# bob = Person.new("Robert")
# puts bob.name
# puts bob.first_name
# puts bob.last_name
# puts bob.last_name = "Smith"
# puts bob.name

#Exercise 3

# class Person
#   attr_accessor :first_name, :last_name
#   def initialize(full_name)
#     parse_full_name(full_name)
#   end

#   def name
#     "#{first_name} #{last_name}"
#   end

#   def name=(full_name)
#     parse_full_name(full_name)
#   end

#   private
#     def parse_full_name(full_name)
#       parts = full_name.split
#       self.first_name = parts.first
#       self.last_name = parts.size > 1 ? parts.last : ' '
#     end

# end

# bob = Person.new('Robert')
# puts bob.name
# puts bob.first_name
# puts bob.last_name
# puts bob.last_name = "Smith"
# puts bob.name

# puts bob.name = "John Adams"
# puts bob.first_name
# puts bob.last_name

#Exercise 4

# class Person
#   attr_accessor :first_name, :last_name
#   def initialize(full_name)
#     parse_full_name(full_name)
#   end

#   def name
#     "#{first_name} #{last_name}"
#   end

#   def name=(full_name)
#     parse_full_name(full_name)
#   end

#   private
#     def parse_full_name(full_name)
#       parts = full_name.split
#       self.first_name = parts.first
#       self.last_name = parts.size > 1 ? parts.last : ' '
#     end

# end

# bob = Person.new("Robert Smith")
# rob = Person.new("Robert Smith")

# puts bob.name == rob.name

#Exercise 5
class Person
  attr_accessor :first_name, :last_name
  def initialize(full_name)
    parse_full_name(full_name)
  end

  def name
    "#{first_name} #{last_name}"
  end

  def name=(full_name)
    parse_full_name(full_name)
  end

  private
    def parse_full_name(full_name)
      parts = full_name.split
      self.first_name = parts.first
      self.last_name = parts.size > 1 ? parts.last : ' '
    end

  def to_s
    name
  end

end

bob = Person.new("Robert Smith")
#before addition of the to_s method
puts "The person's name is: #{bob}"
    #Will output the class name, the objectID

#after the addtion of the to_s method
puts "The person's name is: #{bob}"
   #will output Robert Smith
