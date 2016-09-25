# right = one angle = 90
# acute = all three, less than 90
# obtuse = one greater than 90

# Invald if: sum not = 180, any angle less than 0

def triangle(a1, a2, a3)
  angles = [a1, a2, a3]

  case
  when angles.inject(:+) != 180 || angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.all? {|angle| angle < 90}
    :acute
  else
    :obtuse
  end

end

puts triangle(60, 70, 50)
puts triangle(30, 60, 90)
puts triangle(120, 50, 10)
puts triangle(0, 90, 90)
puts triangle(50, 50, 50)