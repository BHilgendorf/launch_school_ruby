def compute
  return 'Does not compute' unless block_given?
  yield
end

 # Alternatively
  # if block_given?
    # return yield
  # else
    # "Does not compute"
  # end


puts compute { 5 + 3} == 8
puts compute {'a' + 'b'} == 'ab'
puts compute == 'Does not compute'


=begin
Understanding the problem
  -method takes an option block
  -if block provided, method should execute
      - return the value returned by the block
  -if no block provided
      - method should return the string "Does not compute"


Test cases

compute { 5 + 3 } == 8
compute {'a' + 'b'} == 'ab'
computer == 'Does not compute'

=end

# -------------------------------------------------

def compute(value)
  return 'Does not compute' unless block_given?
  yield(value)

end

puts compute("Betsy") {|name| "Hello, #{name}"}
puts compute(9) { |value| value / 3}
puts compute("Betsy")

# Further Exploration
# Understand the problem
#   - modify method to take a single argument
#   - argument is yielded to the block

# Requirements
#   - method takes a single argument
#   - argument is yeilded to the block
#   - -if block provided, method should execute
#      - return the value returned by the block
#  -if no block provided
#      - method should return the string "Does not compute"


# Testing Cases

# compute("Betsy") { |name| "Hello, #{name}" }
# compute
# compute(" ") { |name| "Hello, #{name}"}