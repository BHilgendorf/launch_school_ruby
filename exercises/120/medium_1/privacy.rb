class Machine

  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  def show_status
    @switch
  end

  private

  attr_writer :switch
  attr_reader :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

one = Machine.new
puts one.start
puts one.stop
puts one.show_status
puts one.start
puts one.show_status
puts one.switch
