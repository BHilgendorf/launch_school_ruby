def letter_percentages(string)
  character_total = string.length.to_f
  result = {}
  result[:lowercase] = (string.count("a-z") / character_total) * 100
  result[:uppercase] = (string.count("A-Z") / character_total) * 100
  result[:neither] = (string.count("^a-zA-z") / character_total) * 100
  result

end

p letter_percentages('abCdef 123')
p letter_percentages('AbCd +Ef')
p letter_percentages('123')