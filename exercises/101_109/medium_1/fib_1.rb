# 1, 1, 2, 3, 5, 8, 13
def fibonacci(index)
  return 1 if index <= 2
  a = fibonacci(index - 1) 
  b = fibonacci(index - 2)
end

# p fibonacci(1)
# p fibonacci(2)
# p fibonacci(3)
p fibonacci(4)
# p fibonacci(5)
# p fibonacci(12)
# p fibonacci(20)




