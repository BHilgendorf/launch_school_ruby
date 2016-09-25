def bubble_sort!(array)
loop do
  swapped = false
    1.upto(array.size - 1) do |position|
      if array[position -1 ] > array[position]
        array[position], array[position - 1] = array[position - 1], array[position]
        swapped = true
      end
    end
    break if swapped == false
  end
end

array = [5, 3]
bubble_sort!(array)
p array

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array