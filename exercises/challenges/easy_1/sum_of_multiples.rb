# inputs: optional set of multiples, if none given, default to 3 and 5

# outpus: number (sum of all multiples of a particular number up to but not including)

# EX, sum of multiples of 3 and 5 up to 20
#     multiples = 3, 5, 6, 9, 10, 12, 15, 18
#     sum of those numbers = 78


# Notes: optional paramater given for initialize method, if no arguments given at instantiation
#        use 3 and 5

#        .to method should take 1 aparamater

# Approach
#   set default list of multiples to [3, 5] if none given
#   determine all multiples up to given number
#   sum them together

class SumOfMultiples

  def initialize(*multiples)
    @multiples =  multiples.empty? ? [3, 5] : multiples
  end

  def to(final_number)
    @final_number = final_number
    find_all_multiples.reduce(:+)
  end

  def self.to(final_number)
    SumOfMultiples.new.to(final_number)
  end

  def find_all_multiples
    @all_multiples = [0]

    @multiples.each do |number|
      increment = number
      loop do
        break if number >= @final_number
        @all_multiples << number
        number += increment
        
      end
    end
    @all_multiples.uniq
  end

end



