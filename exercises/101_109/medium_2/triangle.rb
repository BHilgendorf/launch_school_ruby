def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort!


  if sides[0] + sides[1] < sides[2] || sides.include?(0)
     :invalid
  elsif side1 == side2 && side2 == side3
    :equilateral
  elsif side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  elsif side1 != side2 && side2 != side3
    :scalene
  end

end
p triangle(3, 3, 3)
p triangle(3, 3, 1.5)
p triangle(3, 4, 5)
p triangle(3, 3, 0)
p triangle(3, 1, 1)

