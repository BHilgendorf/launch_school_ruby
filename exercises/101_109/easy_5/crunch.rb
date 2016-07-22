def crunch(string)
  string.squeeze
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('444abcabccba') == '4abcabcba'
p crunch('gggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') ==''