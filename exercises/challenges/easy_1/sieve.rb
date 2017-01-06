class Sieve
  def initialize(ending_num)
    @range = (2..ending_num).to_a
    @primes = []
  end

  def primes
    until @range.empty?
      next_number = @range.shift
      @primes << next_number
      @range.delete_if {|number| number % next_number == 0}
    end
    @primes
  end
end

