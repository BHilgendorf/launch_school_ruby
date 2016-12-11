# - method takes 3 paramater
#   - starting value
#   - ending value
#   - increment value

# - yeilds each incremented value to the block

# Questions:
# - returns what?
# - what if an incrementing iteration doesn't equal, but exceeds the ending value?'
#   ex. start = 1, end = 9, increment by 5. would be [1, 5, 10?]

def step(starting_value, ending_value, increment)
  current_value = starting_value
  while current_value <= ending_value
    yield(current_value)
    current_value += increment
  end
  current_value
end

step(1, 10, 3) { |value| puts "value = #{value}"}
# step(0, 20, 1) { |value| puts "value = #{value}"}
step(1, 10, 4) { |value| puts "value = #{value}"}