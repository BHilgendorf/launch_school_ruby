def staggered_case(string)
  new_string = ''
  characters = string.chars
  upper = true

  characters.each do |char|
    if upper
      new_string += char.upcase
    else
      new_string += char.downcase
    end
    upper = !upper
  end
  new_string
end

puts staggered_case('I Love Launch School!')
puts staggered_case('ALL_CAPS')
puts staggered_case('ignore 77 and the 444 numbers')