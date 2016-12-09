def all?(collection)
  collection.each { |element| return false unless yield(element)}
  true
end

p all?([1, 3, 5, 6]) { |value| value.odd? }
p all?([1, 3, 5, 7]) { |value| value.odd? }
p all?([2, 4, 6, 8]) { |value| value.even? }
p all?([1, 3, 5, 7]) { |value| value % 5 == 0 }
p all?([1, 3, 5, 7]) { |value| true }
p all?([1, 3, 5, 7]) { |value| false }
p all?([]) { |value| false }