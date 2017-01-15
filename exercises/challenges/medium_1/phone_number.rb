#  Phone Number

#  Take a given string, return the phone number stripped of special characters
#    and with the following rules applied.

# Rules:  Number < 10 digits = bad number, return number of 10 0's
#                  11 digits, 1st number == 1, trim the first 1, use the last 10 digits
#                  11 digits, 1st num != 1, bad nubmer, return number of 10 0's
#                  >11 digits = bad number, return number of 10 0's


# inputs: string. 

# output: string of 10 digits, based on rules aboce

# Approach:
#   - clean string of non-numeric characters
#   - determine how many characters in string
#   - conditional that follows rules above
#   - returns 10 digit string

# Methods Needed
#   Instance methods
#     1) .number      (returns 10 digit clean number)
#     2) .area_code   (returns clean first 3 digits)
#     3) to_s         (returns numbe formated as (XXX) XXX-XXXX )

class PhoneNumber
  ERROR = "0000000000"

  def initialize(phone_number)
    @phone_number = phone_number
    @phone_number = has_letters? ? ERROR : get_clean_number
  end

  def number
    @sms_number = case 
    when @phone_number.length == 10
      @phone_number
    when @phone_number.length == 11 && @phone_number[0] == '1'
      @phone_number.slice(1, 10)
    else
      ERROR
    end
    @sms_number
  end

  def to_s
    "(#{area_code}) #{exchange}-#{extention}"
  end

  def area_code
    number.slice(0,3)
  end

  def exchange
    number.slice(3,3)
  end

  def extention
    number.slice(6,4)
  end

  private

  def get_clean_number
    @phone_number.scan(/[0-9]/).join
  end

  def has_letters?
    @phone_number.match(/[a-z]/i)
  end

end
