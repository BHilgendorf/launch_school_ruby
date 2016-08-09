
def get_input(type)
  puts "Enter a #{type}:"
  gets.chomp
end

noun = get_input('noun')
verb = get_input('verb')
adverb = get_input('adverb')
adjective = get_input('adjective')


puts "The #{noun} #{verb}s #{adverb} by the #{adjective} forest."

