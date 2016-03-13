#1 Write down whether the following expressions return true or false.
# (32 * 4) >= 129  ANSWER: false
#false != !true  ANSWER: false
#true == 4 ANSWER: false
# false == (847 == '874') ANSWER: true
# (!true || (!(100/5) == 20) || ((328 / 4) == 82)) || false ANSWER: true

#2). Write a mthod that takes a string as an agument. The method should return the all-caps version of the string
#only if the string is longer than 10 characters.

def caps(word)
  if word.length > 10
    word.upcase
  else
    word
  end
end

puts caps("betsy hilgendorf")
puts caps("bikes are fun!")

#3). Write a program that takes a number from the user between 0 and 100 and reports back whether the number is betten 0 and 50
#, 51 and 100, or above 100.

puts "Please enter a number between 0 and 100"
guess = gets.chomp.to_i


if (guess >= 0 && guess <= 50)
    puts "#{guess} was between 0 and 50"
elsif (guess >50 && guess <101)
    puts "#{guess} was between 51 and 100"
elsif (guess >100)
    puts "#{guess} is over 100"
else
    puts "#{guess} is not in range"
end


#4) What will each block of code print to the screen?
  #1  '4' == 4 ? puts("TRUE") : puts("FALSE")
    #Answer: it will print FALSE

  #2 x = 2
    # if ((x * 3) /2 ) == (4 + 4 - x - 3)
    #  puts "Did you get it right?"
     #else
      # puts "Did you?"
    # end
    # Answer: It will print Did you get it right?

  #3) y = 9
   #  x = 10
   #  if (x + 1) <= (y)
   #     puts "Alright."
  #   elsif (x + 1) >= (y)
  #     puts "Alright now!"
  #   elsif (y + 1) == x
  #     puts "ALRIGHT NOW!"
  #    else
  #      puts "Alrighty!"
  #    end
  #  ANSWER: it will print Alrighty now!

  #5) Rewrite your program from exercise 3 using a case statement. Wrap the statement from exercise 3 in a method and
  # wrap this new case statement in a method. Make sure they both still work. 

  def compare(num)
  if num < 0
      puts "you cannot enter a negative number"
  elsif num <= 50
      puts "#{num} is between 0 and 50"
  elsif num <= 100
      puts "#{num} is between 51 and 100"
  else
      puts "#{num} is greater than 100"
  end
end


def compare_one(num)
  case
  when num < 0
    puts "you cannot enter a negative number."
  when num <= 50
    puts "#{num} is between 50 and 100"
  when num <= 100
    puts "#{num} is between 51 and 100"
  else
    puts "#{num} is greater than 100"
  end    
end

puts "enter a number between 0 and 100"
input = gets.chomp.to_i

compare(input)
compare_one(input)

#6) When you run the following code...you get the following error message..why and how do you fix?
# Answer: There is only one 'end'. Both the def and the if/else need a closing 'end' statement
