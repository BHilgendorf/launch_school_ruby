class SecretHandshake
  attr_reader :binary

  COMMANDS = ['wink', 'double blink', 'close your eyes', 'jump']

  def initialize(input)
     @binary = input.to_i.to_s(2).chars.reverse
  end

  def commands
     handshake = []
    0.upto(3) do |index|
      handshake << COMMANDS[index] if @binary[index] == "1"
    end

    @binary[4] == "1" ? handshake.reverse : handshake
  end

end


