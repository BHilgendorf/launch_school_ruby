# def sum_of_sums(array)
#   sum = 0
#   counter = 0
#   loop do
#     array.each_with_index do |item, index|
#       sum += item if index <= counter
#     end
#     counter += 1
#     break if counter == array.size
#   end
#   sum
# end


#given solution
def sum_of_sums(array)
  sum = 0
  1.upto(array.size) do |position|
    sum += array.slice(0, position).inject(:+)
  end
  sum
end

puts sum_of_sums([3, 5, 2])
puts sum_of_sums([1, 5, 7,3])
puts sum_of_sums([4])
puts sum_of_sums([1, 2, 3, 4, 5])