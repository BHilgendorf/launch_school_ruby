class MinilangRuntimeError < RuntimeError; end
class BadTokenError < MinilangRuntimeError; end
class EmptyStackError < MinilangRuntimeError; end

class Minilang
  attr_reader :directions

  DIRECTIONS = %w(PUSH ADD SUB MULT DIV MOD POP PRINT)

  def initialize(string)
    @register = 0
    @stack = []
    @directions = string.split
  end

  def eval
    directions.each {|word| evaluate_token(word)}

  rescue MinilangRuntimeError => error
    puts error.message
  end


  def evaluate_token(token)
    if DIRECTIONS.include?(token)
      send(token.downcase)
    elsif token =~ /\A[-+]?\d+\z/
      @register = token.to_i
    else
      raise BadTokenError, "Invalid token #{token}"
    end
  end

  def push
    @stack.push(@register)
  end

  def pop
    raise EmptyStackError, "Empty Stack!" if @stack.empty?
    @register = @stack.pop
  end

  def add
    @register += pop
  end

  def div
    @register /= pop
  end

  def mod
    @register %= pop
  end

  def mult
    @register *= pop
  end

  def sub
    @register -= pop
  end

  def print
    puts @register
  end

end


Minilang.new('PRINT').eval
Minilang.new('5 PUSH 3 MULT PRINT').eval
Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
Minilang.new('5 PUSH POP POP PRINT').eval
Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT').eval
Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT').eval
Minilang.new('-3 PUSH 5 XSUB PRINT').eval
Minilang.new('-3 PUSH 5 SUB PRINT').eval
Minilang.new('6 PUSH').eval

# Code after trying again on my own

class MinilangRuntimeError < RuntimeError; end
class BadTokenError < MinilangRuntimeError; end
class EmptyStack < MinilangRuntimeError; end

OPERATIONS = %W(PUSH ADD SUB MULT DIV MOD POP PRINT)

class Minilang
  attr_reader :procedure

  def initialize(string)
    @procedure = string.split(' ')
    @stack = []
    @register = 0
  end

  def eval
    procedure.each { |element| evaluate_token(element) }
    
    rescue MinilangRuntimeError => error
    puts error.message

  end

  def evaluate_token(element)
    if OPERATIONS.include?(element)
        send(element.downcase)
      elsif valid_number?(element)
          @register = element.to_i
      else
        raise BadTokenError, "Invalid token: #{element}"
      end
  end

  def valid_number?(element)
    element.to_i.to_s == element
  end

  def print
    puts @register
  end

  def push
    @stack.push(@register)
  end

  def add
    @register += pop
  end

  def sub
    @register -= pop
  end

  def mult
    @register *= pop
  end

  def div
    @register /= pop
  end

  def mod
    @register %= pop
  end

  def pop
    raise EmptyStack, 'Empty Stack you fool' if @stack.empty?
    @register = @stack.pop
  end

end

Minilang.new('PRINT').eval
Minilang.new('5 PUSH 3 MULT PRINT').eval
Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
Minilang.new('5 PUSH POP POP PRINT').eval
Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT').eval
Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT').eval
Minilang.new('-3 PUSH 5 XSUB PRINT').eval
Minilang.new('-3 PUSH 5 SUB PRINT').eval
Minilang.new('6 PUSH').eval



