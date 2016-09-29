class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

#What is the result of the following
trip = RoadTrip.new
puts trip.predict_the_future

# Answer : String will be returned from the choices method in the RoadTrip class
# Ruby first looks for the method in the class from which you are calling it, then
# moves up the heirarchy until it finds it.