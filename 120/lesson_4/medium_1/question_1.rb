class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end

end

checking = BankAccount.new(200)
p checking.positive_balance?

#Alyssa glanced over the code quickly and said - "It looks fine, 
#except that you forgot to put the @ before balance when you refer to the balance instance variable in the body of the positive_balance? method."

#"Not so fast", Ben replied. "What I'm doing here is valid - I'm not missing an @!"

#Who is right, Ben or Alyssa, and why?


# Answer: Ben is right. In the positive_balance instance method, Ben is actually using
# attr_reader (the getter method) for the instance variable balance.