def fibonacci_last(position)
  first, last = [1, 1]
  3.upto(position) do
    first, last = [last, first + last]
  end
  last % 10
end

p fibonacci_last(15)
p fibonacci_last(20)
p fibonacci_last(100)
p fibonacci_last(100_001)
p fibonacci_last(1_000_007)
p fibonacci_last(123456789)