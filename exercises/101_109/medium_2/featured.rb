def featured_number?(number)
  number.odd? &&
  number % 7 == 0 &&
  number.to_s.chars.uniq.join == number.to_s
end

def featured(number)
  next_test = number + 1
  loop do
    return next_test if featured_number?(next_test)
    next_test += 1
    break if next_test >= 9_876_543_210
  end
  "There is no possible number that fulfills those requirements."
end


p featured(12)
p featured(20)
p featured(21)
p featured(997)
p featured(1029)
p featured(999_999)
p featured(999_999_987)
p featured(9_999_999_999)

