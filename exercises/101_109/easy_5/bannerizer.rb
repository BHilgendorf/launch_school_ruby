# def print_in_box(string)
#   width = string.length + 2
#   puts "+" + "-" * width + "+"
#   puts "|" + " " * width + "|"
#   puts "| #{string} |"
#   puts "|" + " " * width + "|"
#   puts "+" + "-" * width + "+"
# end

# print_in_box('Bikes & Coffee')
# print_in_box('To boldy go where no one has gone before')
# print_in_box('')

# Further exploration

def determine_width(string)
  if string.size >= 76
    width = 78
    string = string[0, 76]
  else
    width = string.size + 2
  end
  width
end

def print_in_box(string)
  width = determine_width(string)
  string = string[0, 76] if string.size >= 76


  border_line = "+" + "-" * width + "+"
  empty_line =  "|" + " " * width + "|"


  puts border_line
  puts empty_line
  puts "| #{string} |"
  puts empty_line
  puts border_line
end

print_in_box('This is a really really really really really stinking long run on sentance that does not end')
print_in_box('ouch')