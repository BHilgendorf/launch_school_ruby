# Array#ach returns the calling object at the end
# Array#each iterates through the array, yielding each element to the block
# The method then returns the calling object

def each(array)
  counter = 0

  while counter < array.size
    yield(array[counter])
    counter += 1
  end

  array
end

each([1,2,3,4,5]) do |num|
  puts num
end


each([1, 2, 3, 4, 5]) {|num| "do nothing"}.select {|num| num.odd?}