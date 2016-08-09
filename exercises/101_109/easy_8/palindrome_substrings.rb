def substrings_at_start(string)
  result = []
  1.upto(string.length) do |position|
    result << string[0, position]
  end
  result
end

def substrings(string)
  result = []
  0.upto(string.length) do |pointer|
    substring = string[pointer, (string.length)]
    result.concat(substrings_at_start(substring))
  end
  result
end

def palindrome?(string)
  string == string.reverse
end

def palindromes(string)
  sub_strings = substrings(string)
  palindrome_strings = []
  sub_strings.each do |sub|
    next if sub.length == 1
    palindrome_strings << sub if palindrome?(sub)
  end
  palindrome_strings
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']

p palindromes('hellow-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]

p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
  ]

