#Write assertation that will fail if the 'xyx' is not included in "list



#solution
# assert_includes(list, 'xyz')


# sample implementation
require 'minitest/autorun'

class Car
  attr_accessor :wheels, :list

  def initialize
    @wheels = 4
    @list = ['abc', 'dec']
  end
end


class CarTest < Minitest::Test
  def test_include
    car = Car.new
    assert_includes(car.list, 'xyz')
  end
end