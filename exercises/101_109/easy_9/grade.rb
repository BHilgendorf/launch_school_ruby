def get_grades(score1, score2, score3)
  average = (score1 + score2 + score3) / 3

  case average
  when 90..100 then "A"
  when 80..89  then "B"
  when 70..79  then "C"
  when 60..69  then "D"
  else              "F"
  end
end

puts get_grades(95, 90, 93)
puts get_grades(50, 50, 95)