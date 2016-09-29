# Inhertance Exercises
# Exercise 1

# class Dog
#   def speak
#     "bark!"
#   end

#   def swim
#     'swimming!'
#   end
# end

# class Bulldog < Dog
#   def swim
#     "can't swim!"
#   end
# end

# teddy = Dog.new
# puts teddy.speak
# puts teddy.swim

# tank = Bulldog.new
# puts tank.speak
# puts tank.swim

#Exercise 2

# class Pet
#    def run
#     'running!'
#   end

#   def jump
#     'jumping!'
#   end

# end

# class Dog < Pet
#   def speak
#     'bark!'
#   end

#   def swim
#     'swimming!'
#   end

#    def fetch
#     'fetching'
#   end
# end

# class Bulldog < Dog
#   def swim
#     "can't swim!"
#   end
# end

# class Cat < Pet
#  def speak
#   "meow"
#   end

# end

# pete = Pet.new
# kitty = Cat.new
# dave = Dog.new
# bud = Bulldog.new

# p pete.run
# # p pete.speak

# p kitty.run
# p kitty.speak
# # p kitty.fetch

# p dave.speak

# p bud.run
# p bud.swim

#Exercise 3
#               Pet
#             run & jump
#          /             \
#     Cat               Dog 
#    speak              speak
#                       fetch
#                        swim
#                         |
#                         |
#                        Bulldog
#                         swim  


#Exercise 4
# Method lookup path is the order of locations in which Ruby looks for methods.
# Ruby will invoke the first method that it finds with the name you called.
#  It is important to know the lookup order so you know where to place methods, or
#  why a certain method was called that you were not expecting.  
