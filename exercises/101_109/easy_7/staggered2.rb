def staggered_case(string)
  new_string = ''
  characters = string.chars
  upper = true

  characters.each do |char|
    if char =~ /[a-zA-z]/
      if upper
        new_string += char.upcase
      else
        new_string += char.downcase
      end
      upper = !upper
    else
      new_string += char
    end
  end
  new_string
end

puts staggered_case('I Love Launch School!')
puts staggered_case('ALL_CAPS')
puts staggered_case('ignore 77 the 444 numbers')