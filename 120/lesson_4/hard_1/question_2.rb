module Fuel
  attr_accessor :speed, :heading
  attr_writer  :fuel_capacity, :fuel_efficiency

  def range
    @fuel_capacity * @fuel_efficiency
  end

end


class WheeledVehicle
  include Fuel

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

class Catamaran
  include Fuel

  attr_accessor :propeller_count, :hull_count

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    self.fuel_efficienty = km_traveled_per_liter
    self.fuel_capacity = liter_of_fuel_capacity
  end
end