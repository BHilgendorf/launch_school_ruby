# - if the block returns a value of true for exactly one element, then one? returns true
# - method should stop processing elements as soon as the block returns true a second time


def one?(collection)
  return false if collection.empty?

  number_true = 0
  collection.each do |element|
    number_true += 1 if yield(element)
    return false if number_true == 2
  end
  return false if number_true == 0
  true
end

# Given answer
# def one?(collection)
#   matched = false
#   collection.each do |element|
#     next unless yield(element)
#     return false if matched == true
#     matched = true
#   end
#   matched
# end

p one?([1, 3, 5, 6]) { |value| value.even? }
p one?([1, 3, 5, 7]) { |value| value.odd? }
p one?([2, 4, 6, 8]) { |value| value.even? }
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 }
p one?([1, 3, 5, 7]) { |value| true}
p one?([1, 3, 5, 7]) { |value| false}
p one?([]) { |value| true}
