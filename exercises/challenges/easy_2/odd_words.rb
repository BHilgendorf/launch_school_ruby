=begin
  Consider a character set consisting of letters, a space and a point. 
  Words consist of one or more, but at most 20 letters. An input text consists
  of one or more words seperated from each other by one or more spaceds and terminated by 0
  or more spaces followed by a point. Input should be read from, and including,
  the first letter of the first word, up to and including the terminating point. 
  The output text is to be produced such that successive words are separated by a 
  single space with the last word beging terminated by a single point.

Odd words are copied in reverse order while even words are merely echoed.

Example "whats the matter with kansas" becomes
        "whats eht matter htiw kansas"

Bonus: the characters must be read and printed one at a time.



-input string of letters, spaces, and .
- words are letters from 1 to 20 characters in length
- text conists of 1 or more words seperated by 1 or more spaces
- text is terminated by 0 or more spaces followed by a point
- input read first letter of first word up to and including terminating point

- output text - each word seperated by 1 space, with the last word ending in a single .


Test Cases:

reverse_odd_words("") # error
reverse_odd_words(".") # error
reverse_odd_words("hello.") #hello.
reverse_odd_words("hello world.") # hello dlrow.
reverse_odd_words("hello world .") # hello dlrow.
reverse_odd_words("hello  world.") # hello dlrow. 
reverse_odd_words("hello  world .") # hello dlrow. 
reverse_odd_words("hello hello   world   .") # hello olleh world.


"whats the matter with kansas."
"whats  the    matter with kansas. (more than on space between words)
"whats  the  matter with  kansas     ." (more than one space between words, more than one space until ending .)


- split the string into an array (consider multiple spaces)
- string reverse the odd indexed elements
  - if the string ends with a dot, then the dot is kept to the end
- put everyting back together (array.join)

=end


# initial attempt
# def reverse_odd_words(string)
#   words_array = string.delete(".").split(/\s/)
#   words_array.delete("")
#   result = []
#   words_array.each_with_index do | word, index|
#     if index.odd?
#         result << word.reverse
#     else
#         result << word
#     end
#   end
#   result.join(" ") + "."
# end

# Refactor 1
def reverse_odd_words(string)
  words_array = string.delete(".").split(/\s/)
  words_array.delete("")
   words_array.map do |word|
    words_array.index(word).odd? ? word.reverse! : word
  end
  words_array.join(" ") + "."
end


p reverse_odd_words("hello.") #hello.
p reverse_odd_words("hello world.") # hello dlrow.
p reverse_odd_words("hello world .") # hello dlrow.
p reverse_odd_words("hello  world.") # hello dlrow. 
p reverse_odd_words("hello  world .") # hello dlrow. 
p reverse_odd_words("hello hello   world   .") # hello olleh world.
p reverse_odd_words("Whats the matter with kansas.")








