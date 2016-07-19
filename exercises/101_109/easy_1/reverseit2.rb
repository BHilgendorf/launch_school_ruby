def reverse_words(words)
  words = words.split

  words.map do |word|
    word.reverse! if word.length >= 5
  end

  words.join(' ')
end


puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')