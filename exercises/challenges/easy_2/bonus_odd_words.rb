#  iterate through string one character at a time.
#  some type of switch to determine if words neds to be reversed
#  count of spaces. if last character in new_string is a " ", subsequent spaced are not added
#  will need a queue to hold letters until end of word is reached
#  add letters in reverse order into final array
#  terminate iterating when . is reached

def reverse_odd_words(string)
  new_string = ""
  needs_reversed = :off
  string.chars.each do |character|
    if needs_reversed == :on 


    else
      result << character

  end

end

# def reverse_word(character)

# p reverse_odd_words("hello.") #hello.
# p reverse_odd_words("hello world.") # hello dlrow.
# p reverse_odd_words("hello world .") # hello dlrow.
# p reverse_odd_words("hello  world.") # hello dlrow. 
# p reverse_odd_words("hello  world .") # hello dlrow. 
# p reverse_odd_words("hello hello   world   .") # hello olleh world.
# p reverse_odd_words("Whats the matter with kansas.")

text = "word"
queue = ""
text.chars do |letter|
  queue << letter
end

result = ""

queue.chars.reverse_each do |letter|
  result << letter
end

puts result