# Input: string and array of possible anagrms

# Output: array of strings, that are anagrams of the given word
#   anagram - a different word that contains all the same letters of the given word.
#   must use all characters

# Rules:  return empty array if none of the possible anagrams are indeed an anagram
#         case insensitive - if a capitalized word and lower case word are both in the 
#                             possibilities list, only list it once
#         anagram word must be same length as test word
#         each letter can be "used" only once

# 


# Methods needed
  # instance method 
        # match - main method that provides matched word
        # sort - sorts result array    


# Approach
#   helper method to determin if word is an anagram
#   select all words from possibilities array that return true from helper method



class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(possible_anagrams)
    @anagrams = possible_anagrams.select { |word| anagram?(word.downcase)}
  end

  def sort
    @anagrams.sort
  end

# Original anagram? method
  # def anagram?(test_word)
  #   return false if test_word.length != @word.length || test_word.downcase ==@word.downcase

  #   master_word = @word.downcase.chars
  #   test_letters = test_word.downcase.chars
  #   test_letters.each do |letter|
  #     master_word.delete_at(master_word.find_index(letter)) if master_word.include?(letter)
  #   end
  #   master_word.empty? ? true : false
  # end

# Refactored anagram? method
  def anagram?(test_word)
    return false if test_word == @word

    master_word = @word.chars.sort == test_word = test_word.chars.sort
  end

end
