def remove_vowels(string)
  string.map do |word|
    word.delete "AEIOUaeioiu"
  end
end

# alternatively
# def remove_vowels(string)
#   string.map {|word| word.gsub(/[aeiou]/i,'')}
# end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %W(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']