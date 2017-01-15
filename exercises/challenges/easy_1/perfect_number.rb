# input: number (positive or negative)

# output: string of one of these three (perfect, abundant, deficient)
#    'Perfect' : Sum of factors == number
#    'Abundant': Sum of factors > number
#    'Deficient': Sum of factors < number

# Prime numbers are deficient

# approach
#  determine prime?
#  find all divisors / factors
#  add all factors and generate output based on result (table above)


class PerfectNumber

  def self.classify(number)
    @number = number

    raise RuntimeError if @number < 0

    sum_of_factors = generate_divisors.reduce(:+)

    case 
    when sum_of_factors == @number then "perfect"
    when sum_of_factors > @number then "abundant"
    when sum_of_factors < @number then "deficient"
    end
  end

  def self.generate_divisors
    @divisors = []
    1.upto(@number - 1) do |digit|
      @divisors << digit if @number % digit == 0
    end
    @divisors
  end
end

