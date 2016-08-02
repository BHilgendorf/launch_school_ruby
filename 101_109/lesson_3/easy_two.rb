1) ages.key?("Spot")
   ages.include?("Spot")
   ages.member?("Spot")

2) my answer
   total_age = 0

   ages.each do |k,v|
     total_age += v
   end
 
   answer given in exercis ages.values.inject(:+)

3)  ages.delete_if {|k,v| v > 100}

4) munsters_description.capitalize!
   munsters_description.swapcase!
   munsters_description.downcase!
   munsters_description.upcase!

5) ages.merge!(additional_ages)

6) ages.values.min

7) advice.match("Dino")

8) flintstones.index {|name| name[0,2] == "Be"}

9) flintstones.map! do |name|
     name[0,3]
   end

10) flintstones.map! {|name| name[0,3]}

