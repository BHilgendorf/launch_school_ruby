#Initial Solution

UPPER_CASE = ('A'..'Z').to_a
LOWER_CASE = ('a'..'z').to_a


def letter_case_count(string)
  count = {lowercase: 0, uppercase: 0, neither: 0}
  string_array = string.split(//)
  string_array.each do |character|
    if UPPER_CASE.include?(character)
      count[:uppercase] += 1
    elsif LOWER_CASE.include?(character)
      count[:lowercase] += 1
    else
      count[:neither] += 1
    end
  end
  count
end

#Alternate solutions
# def letter_case_count(string)
#   count = {}
#   characters = string.split(//)
#   count[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   count[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   count[:neither] = characters.count { |char| char =~ /[^A-Za-z]/}
#   count
# end

p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef')
p letter_case_count('123')
p letter_case_count('')



