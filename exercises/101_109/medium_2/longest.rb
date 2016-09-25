text = File.read('four.txt')

sentences = text.split(/\.|\?|!/)

longest_sentence = sentences.max_by {|sentence| sentence.split.size}

p number_words = longest_sentence.split.size

puts longest_sentence

