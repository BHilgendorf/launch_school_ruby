1) I would it expect it to print the following since, numbers.uniq did not modify the original numbers array
1
2
2
3


2) When used in a method, they are both parts of method names, not syntax. However they each
have syntactical uses as well. Discussed below.

what is != and where should you use it?  => it is the comparison operator of 'not equal'.
   Would use it to compare two things to determine if they are 'not equal' Ex. 4 != 5 would evaluate to 'true'

  put ! before something, like !user_name => returns the opposite of the value. 
      EX. !user_name would return the value of 'false'

  put ! after something, like words.uniq!  => can indicate the method will mutate the caller. 
    In this example the original array of 'words' would be permanantly altered.

  put ? before  => used in conjunction with the : as a ternary operation. Code to right of ? will be 
    excuted if the code to the left of ? evaluates to true.
 
  put ? after something  => used in conjunction with the : as a ternary operation. Code to right of ? will be 
    excuted if the code to the left of ? evaluates to true.

  put !! before something, like !!user_name => returns the value of the boolean for that object.
    Ex. !!user_name would return the value of 'true'


3) Replace the word "important" with "urgent" in this string:

  advice = "Few things in life are as important as house training your pet dinosaur."

  advice.gsub!("important", "urgent")



4) numbers = [1, 2, 3, 4, 5]

  numbers.delete_at(1) => will delete what is at index location of the number between the (). 
     In this case it will delete and return '2'  
     Now numbers = [1, 3, 4, 5] 

  numbers.delete(1) => will delete the value that is within  the () if it is within the array
     In this case it will delete and return '1'
     Now numbers = [2, 3, 4, 5]

5) Programmatically determine if 42 lies between 10 and 100.

   (10..100).cover.(42)

6) famous_words = "seven years ago..."

  1) famous_words.prepend("four score and ")

  2) famous_words = "four score and " + famous_words


7) 42

8) flintstones.flatten!

9) flintstones.assoc("Barney")

10) flintstones_hash = {}
    flintstones.each_with_index do |v,i| 
      flintstones_hash[v] = [i]
    end  




