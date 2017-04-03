# Use Luhn Formula to determin if a number is valid
#   Luhn formula  - counting from right most digit, double very second number
#                 - if number > 10, subtract 9 from the number
#                 - add the digits
#                   -if they are evenly divisible by 10, then valid number
#                   - if they are not, invalid number

# inputs: numbers

# Methods needed:
#   1)add_ends (instance method)
#       - takes digits, returns every second digits (fromt he right) doubled
#       - if doubled digit is > 10, subtract (step one of the Luhn Formula)
#   2) checksum (instance method)
#        - returns checksum (add_ends) then added together
#        - Ex.(4913) >8923 > 8 + 9 + 2 + 3 = 22
#        - 201773 > 402753 > (added together = 21)
#   3) valid? (instance method)
#        - determine if number provided is valid (checksum % 10 == 0)
#   4) create (Class method)
#       - takes a number
#       - determines final right most digit needed to make it a valid number
#         - per Luhn Algo.

class Luhn
  def initialize(number)
    @numbers = number.to_s.chars.reverse.map(&:to_i)
  end

  def addends
    number_array = []
    @numbers.each_with_index do |digit, index|
      if index.even?
        number_array << digit
      else
        product = digit * 2
        product > 10 ? product -= 9 : product
        number_array << product
      end
    end
    number_array.reverse
  end

  def checksum
    addends.reduce(:+)
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(partial_number)
    0.upto(9) do |test_digit|
      test_number = (partial_number.to_s.chars << test_digit).join.to_i
      test = Luhn.new(test_number)
      return test_number if test.valid?
    end
  end
end
