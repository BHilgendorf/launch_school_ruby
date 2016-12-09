require 'minitest/autorun'

class Car
  attr_accessor :wheels, :name

  def initialize
    @wheels = 4
  end

  def ==(other)
    name == other.name #other.is_a?(Car) && 
  end

end

class Truck
  attr_accessor :name


end

class CarTest < MiniTest::Test
  def test_value_equality
    car1 = Car.new
    car2 = Car.new
    truck1 = Truck.new

    car1.name = "kim"
    car2.name = "kim"
    truck1.name = "kim"

    # assert_equal(car1, car2)
    # assert_same(car1, car2)
    assert_equal(car1, truck1)
  end
end

