class Prime
  def self.nth(number)
    raise ArgumentError if number < 1

    primes = []

    counter = 2
    loop do
      primes << counter if Prime.prime?(counter)
      break if primes.size == number
      counter += 1
    end
    primes[number - 1]
  end

  def self.prime?(number)
    2.upto(number - 1) do |digit|
      return false if number % digit == 0
    end
    true
  end
end
