ENGLISH_NUMBERS = %w(zero one two three four five
                     six seven eight nine ten eleven
                     twelve thirteen fourteen fifteen
                     sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(array)
  array.sort_by {|number| ENGLISH_NUMBERS[number]}
end

p alphabetic_number_sort((0..19).to_a)