# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

a.each do |num|
  puts num
end


#2) Same as above, but only print out values greater than 5.

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

a.each do |num|
  if num > 5
    puts num
  end
end

#3) Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a2 =  a.select {|num| num % 2 != 0}

#4) Append "11" to the end of the original array. Prepend "0" to the beginning.
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

a << 11
a.unshift(0)

#5) Get ride of "11". and Append a "3"
a.pop
a.push(3)

#6) get rid of any duplicates without specifically removing any one value.
a.uniq

#7) What's the major difference between an Array and a Hash?
#ANSWER: Has uses a key value pair for reference and array uses index location

#8) Create a Hash using both Ruby syntax styles
hash_one = {:state => "colorado"}
hash_two = {city: "denver"}

#9) Suppose you have a hash h = {a:1, b:2, c:3, d:4}
#1. Get the value of key `:b`.
#  ANSWER h[:b]


#2. Add to this hash the key:value pair `{e:5}`
# ANSWER h[:e] = 5

#3. Remove all key:value pairs whose value is less than 3.5

h.delete_if {|key,value| value <3.5}

#10) Can hash values be arrays? Can you have an array of hashes? (give examples)
#Answer: yes, hash values can be an array
#Example: h = {state: ["CO", "MI", "MN"]}

#Answer: yes, an array can contain hashes
#Example: betsy = [h = {state: "CO", city: "denver"}, f = {bike: "Moots"}]

#11) Look at several Rails/Ruby online API sources and say which one you like best and why.
#ANSWER: I prefer the original one referenced in the book ruby-doc.org since it is the first one I encountered during my learning process
#and I am getting used to its format. 

#12) Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

#13) Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?

puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

#14) Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. 

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
        

contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |key, value|
    fields.each do |field|
      value[field] = contact_data.shift
    end
end


#15) Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if {|word| word.start_with?("s")}

arr.delete_if {|word| word.start_with?("s", "w")}

#16)  Take the following array:

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
#and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. 
#Look into using Array's map and flatten methods, as well as String's split method.

a.map!{ |word| word.split}.flatten!



#17) What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

#ANSWER: These hashes are the same!
