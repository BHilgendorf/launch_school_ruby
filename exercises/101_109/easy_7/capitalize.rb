def word_cap(string)
  words = string.split.map do |word|
    word.capitalize
  end
  words.join(' ')
end

alternatively
def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end




p word_cap('four score and seven')
p word_cap('the javaScript language')
puts word_cap('this is a "quoted" word')    # => This Is A "quoted" Word  
p word_cap('this is a "quoted" word')       # => "This Is A \"quoted\" Word"
print word_cap('this is a "quoted" word')   # => This Is A "quoted" Word (with no new line character)

