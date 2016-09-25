BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(word)
  word.upcase!
  BLOCKS.none? { |pair| word.count(pair) >= 2}
end

p block_word?("batch")
p block_word?('butch')
p block_word?('jest')
p block_word?("bub")



