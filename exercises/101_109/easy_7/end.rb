def penultimate(string)
  string_array = string.split
  string_array[-2]

end

puts penultimate('last word')
puts penultimate('Launch School is great')