#  Given a phrase, method will count occurrenes of each word in that phrase

# Input: String

# Output: hash. word is the key, count is the value

# Method Implmentation
  # create a new hash, with each word in the phrase listed only once
  # iterate through the hash, updating the value with the count of occurranes
  #  for that word/key
  #  return the hash


  # words may be seperated by special characters, spaces, new lines, etc
  # words are not case sensitive, go == GO



class Phrase

  def initialize(string)
    @words = string
  end

  def word_count
    @count = Hash.new

    words_array = @words.downcase.scan(/\b[\w']+\b/)

    words_array.each do |word|
      @count[word] = words_array.count(word)
    end
    @count
  end
end



