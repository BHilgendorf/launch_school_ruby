stoplight = ['green', 'yellow', 'red'].sample

#convert below case statement to if statement
# case stoplight
#   when 'green'
#     puts "Go"
#   when 'yellow'
#     puts "Slow down"
#   when 'red'
#     puts "Stop!"
# end

if stoplight == 'green'
  puts "go"
elsif stoplight == 'yellow'
  puts "slow down"
else 
  puts "stop"
end

#alternatively

puts "Go" if stoplight == 'green'
puts 'slow down' if stoplight == 'yellow'
puts 'stop' if stoplight == 'red'