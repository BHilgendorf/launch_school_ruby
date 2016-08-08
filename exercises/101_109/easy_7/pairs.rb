def multiply_all_pairs(arr1, arr2)
  result = []
  arr1.each do |item1|
    arr2.each do |item2|
      result << item1 * item2
    end
  end
  result.sort
end

#alternate solution provided in solution
# def multiply_all_pairs(arr1, arr2)
#   arr1.product(arr2).map { |num1, num2| num1 * num2}.sort
# end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])