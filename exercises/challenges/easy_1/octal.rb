# inputs: string, should be a string of a number
#         


# output: Octal number (base 8)
#         return 0 if input is 0 or non numeric string (Ex 'carrot')

# Octal rules for 233
#         = 2*(8^2) + 3*(8^1) + 3*(8^0)
#         = 2*64    + 3*8     + 3*1
#         = 128     + 24       + 3
#         = 155


# Approach
#  convert string to FixNum. split into array
#  iterate through multiplying first digit by (8 to the (string.length) power)
#                  multiple each digit by (8 to the length -1) power
#  add all digits together
#  return sum

class Octal
  attr_reader :number

  BASE = 8
  INVALID_CHARACTERS = /\D|[89]/


  def initialize(input)
   @number = input =~ INVALID_CHARACTERS ? [] : input.to_s.chars.map(&:to_i)
  end

  def to_decimal
    return 0 if number.empty?

     counter = number.size - 1
    result = []
    number.each do |digit|
      result << digit * (BASE**counter)
      counter -= 1
    end
    result.reduce(:+)
  end
end


