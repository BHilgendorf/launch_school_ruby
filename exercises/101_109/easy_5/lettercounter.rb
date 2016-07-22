# Original solution
# def word_sizes(string)
#   size = {}
#   split_string = string.split
#   split_string.each do |word|
#     if size.has_key?(word.length)
#       size[word.length] += 1
#     else
#       size[word.length] = 1
#     end
#   end
#   size.sort.to_h
# end


#  Refactored solution
def word_sizes(string)
  size = Hash.new(0)
  string.split.each do |word|
    size[word.size] += 1
  end
  size.sort.to_h
end


p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')