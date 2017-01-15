#  Convert a trinary numeric string to a decimal number

# input: string
#        validation: valid trinary characters are 0, 1, 2


# output: number (Fixnum)

# rules: invalid entries should return a 0

# Approach:
#  - convert string to array, map to integer
#  - reverse iterate through the array
#     - multiply eaah digit by 3 to the (index) power
#  - reduce the numbers to one total sum that is returned

class Trinary
  VALID_CHARACTERS = /[012]/
  BASE = 3

  def initialize(trinary_string)
    @trinary_string = trinary_string
  end

  def to_decimal
    return 0 unless valid_trinary?

    decimal_number = 0

    @trinary_string.chars.map(&:to_i).reverse.each_with_index do  |element, index| 
      decimal_number += (element * (BASE ** index))
    end
    decimal_number
  end

  private

  def valid_trinary?
    @trinary_string.chars.all? {|character| VALID_CHARACTERS =~ character }
  end
end
