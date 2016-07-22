def word_sizes(string)
  count = Hash.new(0)
  string.split.each do |word|
    simple_word = word.delete('^A-Za-z')
    count[simple_word.length] += 1
  end
count.sort.to_h
end


p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')