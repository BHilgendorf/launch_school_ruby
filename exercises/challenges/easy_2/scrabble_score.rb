#  input: string, case insensitive

# output: numerical value
#         - calculated by adding the value for each letter in the string
#         - score should be 0 if:
#             - empty string
#             - string contains non-alpha characters 


# approach
#  Initialize hash, letter is key, value is numerical_value
#  condintional for empty string, nil or non-alpha characters, score = 0
#  string.chars to split into individual characters
#  map to the numerical value
#  inject to compute the total


class Scrabble
  attr_reader :word

  LETTERS_VALUES = {'a' => 1, 'b' => 3, 'c' => 3, 'd' => 2, 'e' => 1,
                    'f' => 4, 'g' => 2, 'h' => 4, 'i' => 1, 'j' => 8,
                    'k' => 5, 'l' => 1, 'm' => 3, 'n' => 1, 'o' => 1, 
                    'p' => 3, 'q' => 10, 'r' => 1, 's' => 1, 't' => 1,
                    'u' => 1, 'v' => 4, 'w' => 4, 'x' => 8, 'y' => 4, 
                    'z' => 10}

  def initialize(word)
    @word = word
  end

  def score
    return 0 if invalid_word?

    letters = word.downcase.chars
    letters.map! do |letter|
      LETTERS_VALUES[letter]
    end
    letters.reduce(:+)
  end

  def invalid_word?
    return true if word == nil || word.empty? || word.match(/[^a-z]/i) != nil
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end



