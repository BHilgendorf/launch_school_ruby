# The long way -----------------------

# def substrings_at_start(string)
#   results = []
#   1.upto(string.length) do |position|
#     results << string[0, position]
#   end
#   results
# end

# def substrings(string)
#   result = []
#   count = 0
#   loop do
#     result << string[count, string.length]
#     count += 1
#     break if count == string.length
#   end

#   final = []
#   result.each do |sub_array|
#     final << substrings_at_start(sub_array)
#   end
#   final.flatten!

# end

# # The shorter way ---------------------------
def substrings_at_start(string)
  result = []
  1.upto(string.length) do |position|
    result << string[0, position]
  end
  result
end

def substrings(string)
  result = []
  0.upto(string.length) do |pointer|
    substring = string[pointer, (string.length)]
    result.concat(substrings_at_start(substring))
  end
  result
end



 p substrings('abcde') == [
   'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
  ]