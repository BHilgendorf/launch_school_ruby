#Write assertation that will fail if the Array "list" is not empty


#solution
assert_empty(list)


# sample implementation
require 'minitest/autorun'

class Car
  attr_accessor :wheels, :list

  def initialize
    @wheels = 4
    @list = [1, 2, 3]
  end
end


class CarTest < Minitest::Test
  def test_empty
    car = Car.new
    assert_empty(car.list, "Array is not empty")
  end
end