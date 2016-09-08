NUMBERS = { 'one' => '1', 'two' => '2', 'three' => '3',
            'four' => '4', 'five' => '5', 'six' => '6',
            'seven' => '7', 'eight' => '8', 'nine' => '9',
            'zero' => '0'
}

def word_to_digit(sentance)
  NUMBERS.keys.each do |word|
    sentance.gsub!(/\b#{word}\b/i, NUMBERS[word])
  end
  sentance
end

p word_to_digit('Please call me at FIVE five five one two three four. Thanks.')