module Walkable
  def walk
    puts "#{proper_name} #{gait} forward"
  end
end

class Person
  attr_reader :name
  include Walkable

  def initialize(name)
    @name = name
  end

  def proper_name
    @name
  end

  private
  def gait
    "strolls"
  end
end

class Noble
  attr_reader :name, :title
  include Walkable
  
  def initialize(name, title)
    @name = name
    @title = title
  end

  def proper_name
    @title + " " + @name
  end

  private

  def gait
    "struts"
  end
end



class Cat
  attr_reader :name
  include Walkable

  def initialize(name)
    @name = name
  end

  def proper_name
    @name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  attr_reader :name
  include Walkable

  def initialize(name)
    @name = name
  end

  def proper_name
    @name
  end

  private

  def gait
    "run"
  end
end

mike = Person.new("Mike")
mike.walk

kitty = Cat.new("Kitty")
kitty.walk

flash = Cheetah.new("Flash")
flash.walk

byron = Noble.new("Byron", "Lord")
byron.walk

