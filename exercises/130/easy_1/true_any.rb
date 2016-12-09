require 'set'

def any?(array)
  array.each do |element|
    return true if yield(element)
  end
  false
end


# p any?([1, 3, 5, 6]) { |value| value.even?}
# p any?([1, 3, 5, 7]) { |value| value.even?}
# p any?([2, 4, 6, 8]) { |value| value.odd?}
# p any?([1, 3, 5, 7]) { |value| value % 5 == 0}
# p any?([1, 3, 5, 7]) { |value| true}
# p any?([1, 3, 5, 7]) { |value| false}
# p any?([]) { |value| true}


# Verifying implementation with Hash
hash = {'a' => 1, 'b' => 2, 'c' => 3}

p any?(hash) { |key, value| key == 'a'}
p any?({})   { |key, _| true}

# verifying implementation with Set

s1 = Set.new [1, 2, 3]
p any?(s1) { |element| element == 1}