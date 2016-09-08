#Initial solution
def diamond(number)
  if number == 1
    puts "*"
  else
    spaces = number / 2
    counter = 1
    loop do
      puts (" " * spaces) + ("*" * counter) + (" " * spaces)
      counter += 2
      spaces -= 1
      break if counter > number
    end
   
    counter = number - 2
    spaces = 1
    loop do
      puts (" " * spaces) + ("*" * counter) + (" " * spaces)
      counter -= 2
      spaces += 1
      break if counter < 0
    end
  end
end

# # given solution
# def print_row(full_size, distance_from_center)
#   num_stars = full_size - (2 * distance_from_center)
#   stars = "*" * num_stars
#   puts stars.center(full_size)
# end

# def diamond(full_size)
#   max_spaces = (full_size -1) / 2
#   max_spaces.downto(0) { |distance| print_row(full_size, distance)}
#   1.upto(max_spaces)   { |distance| print_row(full_size, distance)}
# end


diamond(9)
