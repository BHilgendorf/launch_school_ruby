#1) What does the each method in the following program return after it is finished executing
# x = [1,2,3,4,5]
# x.each do |a|
# a + 1
# end
#ANSWER: the original array. [1,2,3,4,5]

#2) Write a while loop that takes input from the use, peforms an action and only stops when the user types "STOP"
puts "keep going or STOP"
x = gets.chomp

while x != "STOP" do
  puts "keep going or stop?"
  x  = gets.chomp
end

#3) use the each_with_index method to iterate through an array of your creation that prints tht index and value of the array
states = ["Colorado", "Indiana", "Michigan", "New York", "Minnesota", "Colorado"]

puts "I have lived in the following state in the following order."
states.each_with_index do |home, index|
  puts "#{index + 1}. #{home}"
end

#4) Write a method that counts down to zero using recursion
def down(start)
  if start <= 0
    puts start
  else
      puts start
      down(start-1)
    end
end

down(8)