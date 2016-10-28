class Pet
  attr_reader :name, :type
  def initialize(type, name)
    @type = type
    @name = name
  end

  def to_s
    "a #{type} named #{name}"
  end
end

class Owner
  attr_reader :name
  attr_accessor :pets
  def initialize(name)
    @name = name
    @pets = []
  end
end

class Shelter
  def initialize
    @new_owners = []
  end

  def adopt(owner, pet)
    owner.pets << pet
    @new_owners << owner unless @new_owners.include?(owner)
  end

  def print_adoptions
    @new_owners.each do |owner|
      puts " "
      puts "#{owner.name} has adopted the following pets:"
      owner.pets.each do |pet|
        puts pet
      end
    end
  end
end


butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)

shelter.print_adoptions

puts " "
puts "#{phanson.name} has #{phanson.pets.size} adopted pets"
puts "#{bholmes.name} has #{bholmes.pets.size} adopted pets"