# Understanding the problem
# - decrypt the names gives
# - they are encrypted using rot 13
#   - a letter substitution cypher that replaces a letter with the letter
#    13 letters after it.  
#    example: A -> N, N -> A; E -> R, R -> E


# Data structure options
#   hash with 26 keys, corresponding to the "unencryped letter"
#   nested array with each pair [[A, N]]
#   array of string characters, utilize index


# Manually solving
#   create hash lookup
#   take name and turn to array of chars in lower case
#   iterate through chars and map to decoded char


ENCRYPTED_PIONEERS = [
'Nqn Ybirynpr',
'Tenpr Ubccre',
'Nqryr Tbyqfgvar',
'Nyna Ghevat',
'Puneyrf Onoontr',
'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
'Wbua Ngnanfbss',
'Ybvf Unyog',
'Pynhqr Funaaba',
'Fgrir Wbof',
'Ovyy Tngrf',
'Gvz Orearef-Yrr',
'Fgrir Jbmavnx',
'Xbaenq Mhfr',
'Wbua Ngnanfbss',
'Fve Nagbal Ubner',
'Zneiva Zvafxl',
'Lhxvuveb Zngfhzbgb',
'Unllvz Fybavzfxv',
'Tregehqr Oynapu'
]



CYPHER = {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
          'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
          'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
          'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
          'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g', 
          'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k', 
          'y' => 'l', 'z' => 'm', " " => " "}


def decode(name)
  name_array = name.downcase.chars
  name = name_array.map { |letter| CYPHER[letter]}
  name.join.split(" ").map {|word| word.capitalize!}.join(" ")
end


ENCRYPTED_PIONEERS.each {|pioneer| puts decode(pioneer)}


