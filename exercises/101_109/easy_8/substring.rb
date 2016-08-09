def substrings_at_start(string)
  results = []
  1.upto(string.length) do |position|
    results << string[0, position]
  end
  results
end

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']