#  Grade School

#  1) Hash as data structure (keys = grade, values = first names of children)

# Methods:
#   1) initialize - initialize empty hash
#   2) to_h - calls to_h on the school object
#   2) .add(name, grade) - add method takes name and grade parameters. 
#          adds them to the hash
#   3) school?
#   4) grade(grade) - takes integer as parameter. returns names of children with
#        that grade as the key as an array. Sorted alphabetically by name.
#       - note, if grade is empty, returns empty array
# 

class School
  attr_reader :school

  def initialize
    @school = Hash.new
  end

  def to_h
    @school.sort_by {|grade, student| grade}.to_h
  end

  def add(student, grade)
    @school[grade] ? (@school[grade] << student).sort! : @school[grade] = [student]
  end

  def grade(grade)
    @school[grade] || []
  end

end
