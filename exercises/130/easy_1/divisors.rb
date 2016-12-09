# Understanding the problem
#   -given a number, provide a list of all numbers that are divisors 
#     (given / number = 0 remainder)


# Requirements
#   method takes a positive interger
#   returns an array of all divisors

#   Manually approach to solving
#     result_array = [1, ]  (all numbers are divided equally by 1)
#     start counter at 2
#       divide number given by the counter
#         if it divides with no remainder add it to the result array
#         else increment the counter
#       stop when counter is greater than the given number


# def divisors(number)
#   result_array = [1]
#   2.upto(number) do |element|
#     result_array << element if (number % element == 0)
#   end
#   result_array
# end


def divisors(number)
  (1..number).select { |divisor| number % divisor == 0}
end

# Test cases given
p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891]