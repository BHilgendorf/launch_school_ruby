sun = ['visible', 'hidden'].sample

puts "The clouds are blocking the sun!" unless sun == 'visible'

#alternatively

unless sun == 'visible'
  puts "The clouds are blocking the sun!"
end