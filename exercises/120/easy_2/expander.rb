class Expander
  def initialize(string)
    @string = string
  end

  def to_s
    # self.expand(3)     => Cannot use 'self' if referencing a private method
    #                       Private methods cannot be called with an explicit receiver
    expand(3)
  end

  private

  def expand(n)
    @string * n
  end
end

expander = Expander.new('xyz')
puts expander