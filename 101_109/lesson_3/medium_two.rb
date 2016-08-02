1) munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

age = 0
munsters.each do |name, info|
  age += info["age"] if info["gender"] == "male"
end

puts age

2)munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, info|
  puts "#{name} is a #{info["age"]} year old #{info["gender"]}"
end

3)
def simple_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end


my_string = "pumpkins"
my_array = ["pupkins"]
my_string, my_array = simple_method(my_string, my_array)

puts "My string looks like this now #{my_string}"
puts "My array looks like this now #{my_array}"

4) 
sentence = "Humpty Dumpty sat on a wall."

#my answer:
sentence.split(/\W/).reverse!.join(" ") + "."

# solution given in the exercises
words = sentence.split(/\W/)
words.reverse!
backwards_sentence = words.join(' ') + '.'

5) 34

6) The data in the original hash is changed.

7 ) "paper"

8)"no"

