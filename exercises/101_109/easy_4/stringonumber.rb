## Signed strings to numbers.
## If a - is included, it should be a negative number. 
## If a + is included, it should be a positive number


DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
           '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }


def to_num(string)
    string = string.chars.map { |character| DIGITS[character]}

    value = 0
    string.each { |number| value = 10 * value + number}
    value
end 

def string_to_signed_int(string)
  if string.include?("-")
    string.delete!("-")
    to_num(string) * -1
  else
    string.delete!("+")
    to_num(string)
  end
end

p to_num('4321')
