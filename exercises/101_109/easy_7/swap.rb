#def swapcase(string)
#   string.swapcase
# end

# def swapcase(string)
#   string.split.map(&:swapcase).join(' ')
# end

def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

puts swapcase('CamelCase')
puts swapcase('Tonight on XYZ-TV')