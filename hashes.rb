#1. Given a has of family members, with keys as the title and an array of names as the values, 
#   use Ruby's built in select method to gather only immediate family members' names into a new array.

#given
family = { uncles: ["bob", "joe", "steve"],
           sisters: ["jane", "jill", "beth"],
           brothers: ["frank", "rob", "david"],
           aunts: ["mary", "sally", "susan" ]
         }

close_family = family.select do |key, value|
  key == :sisters || key == :brothers
end

new_array = close_family.values.flatten
p new_array

#2) Look at Ruby's merge method. Notice that it has two version. What is the difference between merge
#   and merge! ? Write a program that uses both and illustrate the differences.

# Answer: merge does not permanently change the original hash, merge! does

h1 = {a: 100, b: 200, c: 300}
h2 = {x: 800, y: 900, z: 1000}

h1.merge(h2)
puts h1

h1.merge!(h2)
puts h1

#3. Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints 
#   all of the keys. Then write a program that does the same thing except printing the values. 
#   Finally, write a program that prints both

hash = {state: "colorado", color: "blue", year: 2014, car: "tacoma"}

hash.each_key {|key| puts key }
hash.each_value {|value| puts value}
hash.each {|key, value| puts "the key is #{key}" + " and the value is #{value}."}

#4) Given the following expression, how would you access the name of the person?
person = {name: 'bob', occupation: 'web developer', hobbies: 'painting'}

person[:name]


#5) What method could you use to find out if a Hash contains a specific value? Write a program to demonstrate
#  ANSWER: has_value?

hash = {state: "colorado", color: "blue", year: 2014, car: "tacoma"}

if hash.has_value?("blue")
  puts "Yes, it is in the hash"
else
  puts "No, it is not in the hash"
end

#6) Given the array
# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live','fowl',
#    'veil', 'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon']

# Write a program that print out groups of words that are anagrams. 

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "------"
  p v
end

#7) Given the following code
#   x = "hi there"
#   my_hash = {x: "some value"}
#   my_hash2 = {x => "some value"}

#ANSWER: The first one is using a symbol as the key. THe second one is using x as a string variable as they key


#8) If you see this error, what do you suspect is the most liekly problem?
#   NoMethodError: undefined method `keys' for Array

# B) There is no method called keys for an Array object
