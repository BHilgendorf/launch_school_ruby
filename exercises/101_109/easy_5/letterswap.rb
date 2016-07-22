def swap(sentence)
  words = sentence.split(" ")
  words.map do |word|
    first_letter = word[0]
    last_letter = word[-1]
    word[0] = last_letter
    word[-1] = first_letter
  end
  words.join(" ")
end

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap ('a')

