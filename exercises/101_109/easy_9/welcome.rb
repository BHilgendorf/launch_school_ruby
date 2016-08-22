def greetings(name_array, hash)
  full_name = name_array.join(' ')
  title = hash.values.join(' ')
  "Hello, #{full_name}! So nice to meet a #{title}."
end

puts greetings(['Harry', 'Q', 'Potter'], {title: 'Master', occupation: 'Wizard'})