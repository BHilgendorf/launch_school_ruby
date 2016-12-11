# - iterates through a collection, passing each element to the block
# - when it finds an element for which the block returns false or nil, it
#   converts the remainer of the collection to an Array and returns that array

# Solution
#   - initialize empty result array
#   - iterate through array, passing each element to the block
#   - once it hits a false or nil, that element through the end of the array is returned


  def drop_while(array)
    index = 0
    while index < array.size && yield(array[index])
      index += 1
    end
    array[index..-1]
  end


# Test cases

p drop_while([1, 3, 5, 6])  { |value| value.odd? }
p drop_while([1, 3, 5, 6])  { |value| value.even? }
p drop_while([1, 3, 5, 6])  { |value| true }
p drop_while([1, 3, 5, 6])  { |value| false }
p drop_while([1, 3, 5, 6])  { |value| value < 5 }
p drop_while([])            { |value| false }