# - If block returns true for any element, then none? returns false
# - Will stop searching the first time it hits a true


def none?(collection)
  collection.each { |element| return false if yield(element)}
  true
end


# Test cases
p none?([1, 3, 5, 6]) { |value| value.even? }
p none?([1, 3, 5, 7]) { |value| value.even? }
p none?([2, 4, 6, 8]) { |value| value.odd? }
p none?([1, 3, 5, 7]) { |value| value % 5 == 0 }
p none?([1, 3, 5, 7]) { |value| true }
p none?([1, 3, 5, 7]) { |value| false }
p none?([])  { |value| true }