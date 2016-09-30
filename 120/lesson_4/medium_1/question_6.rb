# Option 1
class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end


#Option 2
class Computer
  attr_accessor :template

  def create_template
    self.template = "template 14231"
  end

  def show_template
    self.template
  end
end


xyz = Computer.new
xyz.create_template
p xyz.show_template


#what is the differece in the way the code works?

# Answer: Technically no different in the result.

#self if not needed in Option 2 though, becuase show_template invokes the getter
# method through attr_accessor, which doesn't require self, unlike the setter method.
# style is to avoid self where not needed.