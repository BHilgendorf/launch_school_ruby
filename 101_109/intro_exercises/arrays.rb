#1. Below we have given you an array and a number. Write a program that checks to see if the 
# number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(number)
  puts "#{number} is in the array"
end

#2) What will the following programs return? What is the value of arr after each?
# arr = ["b", "a"]
# arr = arry.product(array(1.3)) 
# arr.first.delete(arr.first.last) 
# returns 1
# arr is [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

#arr =["b", "a"]
#arr = arr.product([Array(1..3)]) 
#arr.first.delete(arr.first.last) 
# returns [1, 2, 3]
# arr is ["b"], ["a", [1, 2, 3]]]

#3) How do you print the word "Example" from the following array?
arr = [["test", "hello", "world"], ["example", "mem"]]
puts arr.last.first

#4) What does each method return in the following example?
#   arr = [15, 7, 18, 5, 12, 8, 5, 1]

#1  arr.index(5)  => 3 (returns the index of the first occurance of that object in the array. 5 is in index location 3)
#2  arr.index[5]  => Eundefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index>
#                    from (irb):7
#                    from /usr/local/bin/irb:11:in `<main>'
#3  arr[5]        => 8 (returns the value in index location of 5.)


#5) What is the value of a, b, and c in the following program?
#   string = "Welcome to America!"
#   a = string[6] => "e"
#   b = string[11] => "A"
#   c = string[19] => nil

#6 ) what does the error mean? Answer: The [] behind names is looking for an integer to reference an index location.
#. You cannot enter a string into the [] when searching for an index

#7) Write a program tht iterates over an array and builds a new array that is the result of incrementing 
#each value in the original array by a value of 2. You should have two arrays at the end of this program.
#The orgiginal array and the new array you've created. Print both arrays to the screen using p instead of puts

arr = [10, 20, 30, 40, 50]
new_arr = arr.map {|num| num + 2 }

p arr
p new_arr



