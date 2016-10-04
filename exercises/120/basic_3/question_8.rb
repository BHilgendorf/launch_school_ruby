class Animal
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new('Black')
cat1.color

Cat.ancestors

#Look up path

=begin
Cat
Animal
Object
Kernel
Basic Object
=end

# There was no method found for #color