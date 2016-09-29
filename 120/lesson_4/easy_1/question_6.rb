# What could we add to the class below to access the instance variable @volume?

class Cube
  # Depends on what you mean by 'access'
  #could add attr_accessor or attr_reader or attr_writer
  attr_accessor :volume       

  def initialize(volume)
    @volume = volume
  end

  #could also do
  def get_volume
    @volume
  end
end

#could technically do this
big_cube = Cube.new(5000)
p big_cube.instance_variable_get("@volume")
p big_cube.volume
