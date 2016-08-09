
# #initial answer -----------------------
def double_consonants(string)
  result = []
  characters = string.chars
  characters.each do |char|
    if char.match(/[b-df-hj-np-tv-z]/i)
      result << char << char
    else
      result << char
    end
  end
  result.join
end

# Alternate  ---------------------------------------

# CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

# def double_consonants(string)
#   result = []
#   characters = string.chars
#   characters.each do |char|
#     result << char
#     result << char if CONSONANTS.include?(char.downcase)
#   end
#   result.join
# end


puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""