module Towable
    def tow
      "I can tow a trailer!"
    end

end

class Truck
  include Towable

end

class Car

end

truck1 = Truck.new
puts truck1.tow