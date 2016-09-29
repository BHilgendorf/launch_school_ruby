class AngryCat
  def initialize(age, name)
    @age = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hissssss!!"
  end

end

# How do you create two instances of this class, with separate names/ages

bob = AngryCat.new(2, "Bob")
milo = AngryCat.new(5, "Milo")