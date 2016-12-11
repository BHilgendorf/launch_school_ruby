require 'minitest/autorun'

class Car
  attr_accessor :wheels

  def initialize
    @wheels = 4
  end
end


class CarTest < Minitest::Test
  def test_value
    car = Car.new
    # assert(car.wheels.odd?, 'value is not odd') # this was line for assignment
                                                # needed full example to test for clarification
  end
end