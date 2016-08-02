1) Nothing. greeting is nil, therefore if statement is false, the internal 
  code is not run.

2){:a => "hi there"}  informal_greeting referenced the original object. Therefore
  informal_greeting << 'there' modified the calling object

3)
a) one is: one
   two is: two
   three is: three


b) one is: one
   two is: two
   three is: three

c) one is: two
   two is: three
   three is: one


4) 
# initial solution
def create_uuid
  options = ('a'..'f').to_a + (0..9).to_a
  uuid_arr = []

  32.times do |place|
  uuid_arr[place] = options.sample
  end

  uuid = uuid_arr.join

  uuid.insert(8, "-")
  uuid.insert(13, "-")
  uuid.insert(18, "-")
  uuid.insert(23, "-")
end


# refactored solution after reviewing solution and other students work

def create_uuid
  options = ('a'..'f').to_a + (0..9).to_a
  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times {uuid += options.sample.to_s}
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end

5)
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  dot_seperated_words.each |word|
    return false unless is_a_number?(word)
  end

  true
end

