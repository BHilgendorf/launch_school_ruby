# input: string of numbers, number indicating how long the substrings should be

# output: list of all positive consecutive number series in the lengh provided
#         nested, array format 
#         integers

# Test cases
# "01234", 3  => "012", "123", "234"
# "01234", 2 => [0,1], [1,2], [2, 3], [3, 4[]]

# Approach
# string split into characters
# map to_i
# each_cons(number).to_a


class Series
  def initialize(number_string)
    @string= number_string
  end

  def slices(qty)
    raise ArgumentError if qty > @string.size

    numbers = @string.chars.map(&:to_i)

    numbers.each_cons(qty).to_a
  end

end
