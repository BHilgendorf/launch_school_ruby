# Initial solution
# def sequence(number, multiplier)
#   result = []
#   number.times do |counter|
#     result << counter * multiplier
#   end
#   result
# end

# Refactored solution
def sequence(number, multiplier)
  (1..number).map {|counter| counter * multiplier}
end

p sequence(5, 1)
p sequence(4, -7)
p sequence(3, 0)
p sequence(0, 10000)