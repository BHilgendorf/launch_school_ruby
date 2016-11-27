class Pet
  attr_reader :animal, :name

  def initialize(animal, name)
    @animal = animal
    @name = name
  end

  def to_s
    "a #{animal} named #{name}"
  end
 end

class Owner
  attr_reader :name, :pet_list

  def initialize(name)
    @name = name
    @pet_list = []
  end

  def number_of_pets
    pet_list.size
  end

  def list_pets
    pet_list.each { |pet| puts pet}
  end

end

class Shelter

  attr_reader :owners
  attr_accessor :available_pets

  def initialize
    @owners = []
    @available_pets = []
  end

  def add_pet(pet)
    available_pets << pet
  end

  def adopt(owner, pet)
    owner.pet_list << pet
    owners << owner unless owners.include?(owner)
    available_pets.delete(pet)
  end

  def number_available_pets
    "The Animal Shelter has #{available_pets.size} available pets."
  end

  def print_adoptions
    owners.each do |owner|
      puts "#{owner.name} has adopted the following pets:"
      owner.list_pets
      puts " "
    end
  end

  def print_available_pets
    puts "The Animal Shelter has the following unadopted pets:"
    available_pets.each { |pet| puts pet}
  end

end

shelter = Shelter.new

shelter.add_pet(butterscotch = Pet.new('cat', 'Butterscotch'))
shelter.add_pet(pudding      = Pet.new('cat', 'Pudding'))
shelter.add_pet(darwin       = Pet.new('bearded dragon','Darwin'))
shelter.add_pet(kennedy      = Pet.new('dog', 'Kennedy'))
shelter.add_pet(sweetie      = Pet.new('parakeet', 'Sweetie Pie'))
shelter.add_pet(molly        = Pet.new('dog', 'Molly'))
shelter.add_pet(chester      = Pet.new('fish', 'Chester'))
shelter.add_pet(asta         = Pet.new('dog', 'Asta'))
shelter.add_pet(laddie       = Pet.new('dog', 'Laddie'))
shelter.add_pet(fluffy       = Pet.new('cat', 'Kat'))
shelter.add_pet(ben          = Pet.new('cat', 'Ben'))
shelter.add_pet(chatterbox   = Pet.new('parakeet', 'Chatterbox'))
shelter.add_pet(bluebell     = Pet.new('parakeet', 'Bluebell'))


phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter.print_available_pets
puts shelter.number_available_pets
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
puts ' ----------------------------'

shelter.print_adoptions
puts ' ----------------------------'

puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets"
puts shelter.number_available_pets
