1) 10.times {|x| puts (" " * x) + "The Flintstones Rock"}

2) #my initial solution
statement = "The Flintstones Rock"

statement_arr = statement.split("")
char_hash = {}

statement_arr.each do |letter|
  if char_hash.has_key?(letter)
    char_hash[letter] +=1
  else
    char_hash[letter] = 1
  end
end
puts char_hash

#Solution provided in the lesson

statement = "The Flintstones Rock"

result = {}
letters = ('A' .. 'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_count = statement.scan(letter).count
  result[letter] = letter_count if letter_count > 0
end

puts result

3) Error occurs because "puts" will output a string specificially. THe result of 40 +2 is an integer
    and cannot be concatenated with a string

    1) puts "the value of 40 + 2 is " + (40+2).to_s
    2) puts "the value of 40 + 2 is #{40+2}"

4)  The first one will output 
      1
      3

    The second on will output
      1
      2

5) 
def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
      divisors << number / dividend if number % dividend == 0
      dividend -= 1
   end
  divisors
end

Bonus 1 , this checks to see the divident is a factor of the number. If it divides evenly 
  (module == 0), then it is a factor, if it does not, it is not.

Bonus 2 = this returns the array which is now a list of factors of the number

6) Yes. << will modify the caller and the original array will be permanantly changed.
  In rolling_buffer2, the caller is not modified and the original remains unchanged.

7) The limit variable is defined outside of the method. Methods do not have access to local
    variables unless they are passed into the method as an argument. 

  To fix, include limit as an argument in the method definition and pass it in when calling 
  the method.


8) string = "harry potter and the order of the phoenix"


#my initial method creation
def titleize!(string)
  temp = string.split
  temp.each do |word|
    word.capitalize!
  end
  string = temp.join(" ")
end

puts titleize!(string)

#answer shared in the solutions. 
puts string.split.map {|word| word.capitalize}.join(" ")

9) munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


munsters.each do |k,v|
  case v["age"]
  when 0..17
    v["age_group"] = "kid"
  when 18..64
    v["age_group"] = "adult"
  else
    v["age_group"] = "senior"
  end
end


