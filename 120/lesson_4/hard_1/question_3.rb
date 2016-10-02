module Fuelable
  attr_accessor :speed, :heading
  attr_writer  :fuel_capacity, :fuel_efficiency

  def range
    @fuel_capacity * @fuel_efficiency
  end

end


class WheeledVehicle
  include Fuelable

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tire = tire_array
    @fuel_efficienty = km_traveled_per_liter
    @fuel_capacity = liter_of_fuel_capacity
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end
end

class Auto < WheeledVehicle
  def initialize
    # 4 tires that are various tire pressuress
    super([30, 30, 32, 32], 50, 25.0)
  end
end

class Motorcycle <WheeledVehicle
  def initialize
    # 2 tires that are various pressures
    super([20, 20], 80, 8.0)
  end
end

class Watercraft
  include Fuelable

  attr_accessor :hull_count, :propeller_count

   def initialize(num_propellers, num_hulls, fuel_efficiency, fuel_capacity)
    self.propeller_count = num_propellers
    self.hull_count = num_hulls
    self.fuel_efficienty = fuel_efficiency
    self.fuel_capacity = fuel_capacity
  end
end

class Catamaran < Watercraft
end

class Motorboat < Watercraft
  def initialize(km_travled_per_liter, liters_of_fuel_capacity)
    super(1, 1, km_travled_per_liter, liters_of_fuel_capacity)
  end
end
