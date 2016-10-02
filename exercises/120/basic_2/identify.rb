class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def identify
    self
  end
end

kitty = Cat.new("Sophie")
p kitty.identify
puts kitty.identify # note the difference in output than when 'p' was used