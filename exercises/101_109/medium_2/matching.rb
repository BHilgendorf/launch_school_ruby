# Initial solution

# def balanced?(string)
 
#   string_array = string.chars
#   right_count = 0
#   left_count = 0

#   string_array.each do |char|
#     left_count += 1 if char == "("
#     right_count += 1 if char == ")"
#     return false if right_count > left_count
#   end
#   return false if right_count != left_count

#   true
# end

# refactored

def balanced?(string)
  count = 0
  string.chars.each do |char|
    count += 1 if char == "("
    count -= 1 if char == ")"
    break if count < 0
  end
  count == 0
end



p balanced?('What (is) this?')
p balanced?('What is) this?')
p balanced?('What (is this?')
p balanced?('((What) (is this))?')
p balanced?('((What)) (is this))?')
p balanced?('Hey!')
p balanced?(')Hey!(')
p balanced?('What ((is))) up(')