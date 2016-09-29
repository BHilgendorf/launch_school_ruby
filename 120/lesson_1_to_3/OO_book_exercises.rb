
# Exercise 1 in Classes and Objects - Part 1
# class MyCar

#   def initialize(year, color, model)
#     @year = year
#     @color = color
#     @model = model
#     @current_speed = 0
#   end

#   def speed_up(number)
#     @current_speed += number
#     puts "You push the accellerator and speed up."
#   end

#   def brake(number)
#     @current_speed -= number
#     puts "You push the brake and slow down."
#   end

#   def current_speed
#     puts "You are now going #{@current_speed} mph."
#   end

#   def shut_off
#     @current_speed = 0
#     puts "Parked!"
#   end

# end


# jeep = MyCar.new(1997, 'red', 'Jeep Cherokee')

# jeep.speed_up(50)
# jeep.current_speed
# jeep.speed_up(65)
# jeep.current_speed
# jeep.brake(40)
# jeep.current_speed
# jeep.brake(20)
# jeep.current_speed
# jeep.shut_off

# # Exercise 2
# class MyCar

#   attr_accessor :color
#   attr_reader :year

#   def initialize(year, color, model)
#     @year = year
#     @color = color
#     @model = model
#     @current_speed = 0
#   end

#   def speed_up(number)
#     @current_speed += number
#     puts "You push the accellerator and speed up."
#   end

#   def brake(number)
#     @current_speed -= number
#     puts "You push the brake and slow down."
#   end

#   def current_speed
#     puts "You are now going #{@current_speed} mph."
#   end

#   def shut_off
#     @current_speed = 0
#     puts "Parked!"
#   end

# end


# jeep = MyCar.new(1997, 'red', 'Jeep Cherokee')
# jeep.color = "Silver"
# puts jeep.color
# puts jeep.year

# # Exercise 3
# class MyCar

#   attr_accessor :color
#   attr_reader :year

#   def initialize(year, color, model)
#     @year = year
#     @color = color
#     @model = model
#     @current_speed = 0
#   end

#   def speed_up(number)
#     @current_speed += number
#     puts "You push the accellerator and speed up."
#   end

#   def brake(number)
#     @current_speed -= number
#     puts "You push the brake and slow down."
#   end

#   def current_speed
#     puts "You are now going #{@current_speed} mph."
#   end

#   def shut_off
#     @current_speed = 0
#     puts "Parked!"
#   end

#   def spray_paint(color)
#     self.color = color
#     puts "Your car has been painted #{color}."
#   end

# end


# tacoma = MyCar.new(1997, 'red', 'Jeep Cherokee')
# tacoma.spray_paint("black")

#Classes and Objects - Part 2
# Exercise 1

# class MyCar

#   attr_accessor :color
#   attr_reader :year

#   def self.gas_mileage(tank_size, miles_to_empty)
#     puts "This car gets #{miles_to_empty / tank_size} miles per gallon."
#   end

#   def initialize(year, color, model)
#     @year = year
#     @color = color
#     @model = model
#     @current_speed = 0
#   end

#   def speed_up(number)
#     @current_speed += number
#     puts "You push the accellerator and speed up."
#   end

#   def brake(number)
#     @current_speed -= number
#     puts "You push the brake and slow down."
#   end

#   def current_speed
#     puts "You are now going #{@current_speed} mph."
#   end

#   def shut_off
#     @current_speed = 0
#     puts "Parked!"
#   end

#   def spray_paint(color)
#     self.color = color
#     puts "Your car has been painted #{color}."
#   end

# end


# tacoma = MyCar.new(1997, 'red', 'Jeep Cherokee')
# MyCar.gas_mileage(21, 400)


#Exercise 2
# class MyCar

#   attr_accessor :color
#   attr_reader :year
#   attr_reader :model

#   def self.gas_mileage(tank_size, miles_to_empty)
#     puts "This car gets #{miles_to_empty / tank_size} miles per gallon."
#   end

#   def initialize(year, color, model)
#     @year = year
#     @color = color
#     @model = model
#     @current_speed = 0
#   end

#   def speed_up(number)
#     @current_speed += number
#     puts "You push the accellerator and speed up."
#   end

#   def brake(number)
#     @current_speed -= number
#     puts "You push the brake and slow down."
#   end

#   def current_speed
#     puts "You are now going #{@current_speed} mph."
#   end

#   def shut_off
#     @current_speed = 0
#     puts "Parked!"
#   end

#   def spray_paint(color)
#     self.color = color
#     puts "Your car has been painted #{color}."
#   end

#   def to_s
#     "This car is a #{color} #{year} #{model}."
#   end  

# end


# tacoma = MyCar.new(1997, 'red', 'Jeep Cherokee')
# puts tacoma

# all_road = MyCar.new(2016, 'silver', 'Audi All Road')
# puts all_road


#Inhertiance
# Exercise 1

# class Vehicle

#   attr_accessor :color
#   attr_reader :year
#   attr_reader :model

#   def initialize(year, color, model)
#     @year = year
#     @color = color
#     @model = model
#     @current_speed = 0
#   end

#   def self.gas_mileage(tank_size, miles_to_empty)
#     puts "This car gets #{miles_to_empty / tank_size} miles per gallon."
#   end

#     def speed_up(number)
#     @current_speed += number
#     puts "You push the accellerator and speed up."
#   end

#   def brake(number)
#     @current_speed -= number
#     puts "You push the brake and slow down."
#   end

#   def current_speed
#     puts "You are now going #{@current_speed} mph."
#   end

#   def shut_off
#     @current_speed = 0
#     puts "Parked!"
#   end

#   def spray_paint(color)
#     self.color = color
#     puts "Your car has been painted #{color}."
#   end

# end

# class MyCar < Vehicle
# MAX_WEIGHT = 5000 
#   def to_s
#     "This car is a #{color} #{year} #{model}."
#   end  
# end

# class MyTruck < Vehicle
# MAX_WEIGHT = 10000
#   def to_s
#     "This truck is a #{color} #{year} #{model}."
#   end
# end

# car = MyCar.new(2007, "silver", "Subaru Forester")
# truck = MyTruck.new(2007, "silver", "Toyota Tacoma")

# puts car
# puts truck

#Exercise 2
# class Vehicle

#   @@number_of_vehicles = 0

#   attr_accessor :color
#   attr_reader :year
#   attr_reader :model

#   def initialize(year, color, model)
#     @year = year
#     @color = color
#     @model = model
#     @current_speed = 0
#     @@number_of_vehicles += 1
#   end

#   def self.gas_mileage(tank_size, miles_to_empty)
#     puts "This car gets #{miles_to_empty / tank_size} miles per gallon."
#   end

#     def speed_up(number)
#     @current_speed += number
#     puts "You push the accellerator and speed up."
#   end

#   def brake(number)
#     @current_speed -= number
#     puts "You push the brake and slow down."
#   end

#   def current_speed
#     puts "You are now going #{@current_speed} mph."
#   end

#   def shut_off
#     @current_speed = 0
#     puts "Parked!"
#   end

#   def spray_paint(color)
#     self.color = color
#     puts "Your car has been painted #{color}."
#   end

#   def self.output_number_of_vehicles
#     puts "This Vehicle superclass has #{@@number_of_vehicles} in it."
#   end

# end

# class MyCar < Vehicle
# MAX_WEIGHT = 5000 
#   def to_s
#     "This car is a #{color} #{year} #{model}."
#   end  
# end

# class MyTruck < Vehicle
# MAX_WEIGHT = 10000
#   def to_s
#     "This truck is a #{color} #{year} #{model}."
#   end
# end

# car = MyCar.new(2007, "silver", "Subaru Forester")
# truck = MyTruck.new(2007, "silver", "Toyota Tacoma")
# truck2 = MyTruck.new(2016, "Black", "Toyota Tacoma")
# car2 = MyCar.new(2015, "white", "Audi Allroad")

# Vehicle.output_number_of_vehicles

#Exercise 3
# module Towable
#   def tow
#     "I can tow things!"
#   end
# end


# class Vehicle

#   @@number_of_vehicles = 0

#   attr_accessor :color
#   attr_reader :year
#   attr_reader :model

#   def initialize(year, color, model)
#     @year = year
#     @color = color
#     @model = model
#     @current_speed = 0
#     @@number_of_vehicles += 1
#   end

#   def self.gas_mileage(tank_size, miles_to_empty)
#     puts "This car gets #{miles_to_empty / tank_size} miles per gallon."
#   end

#     def speed_up(number)
#     @current_speed += number
#     puts "You push the accellerator and speed up."
#   end

#   def brake(number)
#     @current_speed -= number
#     puts "You push the brake and slow down."
#   end

#   def current_speed
#     puts "You are now going #{@current_speed} mph."
#   end

#   def shut_off
#     @current_speed = 0
#     puts "Parked!"
#   end

#   def spray_paint(color)
#     self.color = color
#     puts "Your car has been painted #{color}."
#   end

#   def self.output_number_of_vehicles
#     puts "This Vehicle superclass has #{@@number_of_vehicles} in it."
#   end

# end

# class MyCar < Vehicle
# MAX_WEIGHT = 5000 
#   def to_s
#     "This car is a #{color} #{year} #{model}."
#   end  
# end

# class MyTruck < Vehicle
#   include Towable
#   MAX_WEIGHT = 10000
#   def to_s
#     "This truck is a #{color} #{year} #{model}."
#   end


# end

# car = MyCar.new(2007, "silver", "Subaru Forester")
# truck = MyTruck.new(2007, "silver", "Toyota Tacoma")
# truck2 = MyTruck.new(2016, "Black", "Toyota Tacoma")
# car2 = MyCar.new(2015, "white", "Audi Allroad")


#Exercise 5
#Have already done that in previous exercies

#Exercise 6
# module Towable
#   def tow
#     "I can tow things!"
#   end
# end


# class Vehicle

#   @@number_of_vehicles = 0

#   attr_accessor :color
#   attr_reader :year
#   attr_reader :model

#   def initialize(year, color, model)
#     @year = year
#     @color = color
#     @model = model
#     @current_speed = 0
#     @@number_of_vehicles += 1
#   end

#   def self.gas_mileage(tank_size, miles_to_empty)
#     puts "This car gets #{miles_to_empty / tank_size} miles per gallon."
#   end

#     def speed_up(number)
#     @current_speed += number
#     puts "You push the accellerator and speed up."
#   end

#   def brake(number)
#     @current_speed -= number
#     puts "You push the brake and slow down."
#   end

#   def current_speed
#     puts "You are now going #{@current_speed} mph."
#   end

#   def shut_off
#     @current_speed = 0
#     puts "Parked!"
#   end

#   def spray_paint(color)
#     self.color = color
#     puts "Your car has been painted #{color}."
#   end

#   def self.output_number_of_vehicles
#     puts "This Vehicle superclass has #{@@number_of_vehicles} in it."
#   end

#   def display_age
#     if vehicle_age == 0
#       "This #{self.model} is brand new"
#     elsif vehicle_age == 1
#       "This #{self.model} is 1 year old"
#     else
#       "This #{self.model} is #{vehicle_age} years old."
#     end
#   end

#   private

#   def vehicle_age
#     Time.new.year - self.year
#   end

# end

# class MyCar < Vehicle
# MAX_WEIGHT = 5000 
#   def to_s
#     "This car is a #{color} #{year} #{model}."
#   end  
# end

# class MyTruck < Vehicle
#   include Towable
#   MAX_WEIGHT = 10000
#   def to_s
#     "This truck is a #{color} #{year} #{model}."
#   end

# end

# car = MyCar.new(2007, "silver", "Subaru Forester")
# truck = MyTruck.new(2007, "silver", "Toyota Tacoma")
# truck2 = MyTruck.new(2016, "Black", "Toyota Tacoma")
# car2 = MyCar.new(2015, "white", "Audi Allroad")
# puts truck.display_age
# puts truck2.display_age
# puts car2.display_age

#Exercise 7
class Student
  attr_accessor :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end  

  protected

  attr_reader :grade

end

joe = Student.new("Joe", 97)
bob = Student.new("Bob", 84)

puts "Well Done" if joe.better_grade_than?(bob)

# Exercise 8
# hi is a private method. Either move hi above the "private" key word, or create another
# non-private method to access it.



