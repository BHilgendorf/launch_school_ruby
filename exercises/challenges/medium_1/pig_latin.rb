class PigLatin

  def self.translate(string)
    words = string.split
    words.map! do |word|
      translate_word(word)
    end
    words.join(' ')
  end

  def self.translate_word(word)
    if vowel_sound?(word)
      word + 'ay'
    else
      consonants(word)
    end
  end

  def self.consonants(word)
    consonant_sound = word.slice(/\A[^aeiouq]*(qu)*/i)

    rest_of_word = word.sub(consonant_sound, '')
    rest_of_word + consonant_sound + 'ay'
  end

  def self.vowel_sound?(word)
    word =~ /\A[aeiou]|[xy][^aeiou]/i
  end

end
