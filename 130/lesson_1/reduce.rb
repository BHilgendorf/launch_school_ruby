=begin 
Enumerable # reduce, another name for inject. 
Accumulates a collection into 1 object

Example: Sum an array of integers
[1, 2, 3].reduce do |acc, num|
  acc + num
end

=> 6
  
[1, 2, 3]     is the caller
.reduce       is the method 

|acc, num|
  acc + num   is the block
end

iterates through the array, yields two arguments to the block.
1st argument is the accumulator objec,
2nd argument is the current element

return value is the assigned to the accumulator object
=end

def reduce(array, default = 0)
  counter = 0
  accumulator = default

  while counter < array.size
    accumulator = yield(accumulator, array[counter])
    counter += 1
  end
  
  accumulator
end

array = [1, 2, 3, 4, 5]

p reduce(array) {|acc, num| acc + num }
p reduce(array, 10) {|acc, num| acc + num }
p reduce(array) {|acc, num| acc + num if num.odd? }