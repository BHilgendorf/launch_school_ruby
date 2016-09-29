# What is used in this class but doesn't add any value

class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    return "I want to turn on the light with a brighness level of ..."
  end
end

Answer: 
1) return in the information method. Ruby would return that line anyway.
2) attr_accessor is never used