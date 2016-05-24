statement = "Humpty Dumpty sat on a wall."

words = statement.split(/\s/)

words.reverse!
backward_statement = words.join(" ") + "."

puts backward_statement
