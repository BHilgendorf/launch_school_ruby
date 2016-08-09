def center_of(string)
  starting_point = string.length / 2
  if string.length.odd?
    string[starting_point]
  else
    string[starting_point - 1, 2]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'