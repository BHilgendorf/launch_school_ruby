class Flight
  # attr_accessor :database_handle --> remove this line

  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end