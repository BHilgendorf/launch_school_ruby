require 'minitest/autorun'

class Car
  attr_accessor :name

  def initialize
    @wheels = 4
    @name = 'XYZ'
  end
end


class CarTest < Minitest::Test
  def test_downcase
    assert_equal('XYZ', name.downcase )
  end
end