def ascii_value(string)
  total = 0
  string.chars.each { |character| total += character.ord }
  total
end

# alternate, since in ascii a space has a value of 32
# def ascii_value(string)
#   string.chars.map { |character| character.ord }.inject(:+)
# end


p ascii_value("Four score")
p ascii_value("Launch School")
p ascii_value("a")
p ascii_value(' ')