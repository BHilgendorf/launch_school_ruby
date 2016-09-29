class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

#What is the result of calling:
oracle = Oracle.new
puts oracle.predict_the_future

# each time you call sample, one of the strings will be returned at random. 