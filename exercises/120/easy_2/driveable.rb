module Driveable
  def drive
  end
end

class Car
  include Driveable
end

bobs_car = Car.new
bobs_car.drive