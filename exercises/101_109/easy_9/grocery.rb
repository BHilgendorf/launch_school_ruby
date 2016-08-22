# Initial solution
# def buy_fruit(array)
#   list = []
#   array.each do |pair|
#     pair[1].times do
#       list << pair[0]
#     end
#   end
#   list.flatten
# end


# Refactored solution
def buy_fruit(list)
  list.map {|fruit, quantity| [fruit] * quantity}.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])