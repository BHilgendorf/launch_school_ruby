def toggle(key, bank)
  bank[key] == "on" ? bank[key] = "off" : bank[key] = "on"
end

def on?(bank)
  bank.keys.select {|key| bank[key] == "on"}
end

def turn_on_or_off(bank)
  (1..1000).each do |round|
  (round..1000).step(round) {|key| toggle(key, bank)}
  end
end

bank = {}
(1..1000).each {|number| bank[number] = "off"}

turn_on_or_off(bank)
count = bank.count {|switch, status| status == "on"}

puts "There are #{count} switch still in the 'on' position."
puts "They are numbers #{on?(bank)}."



