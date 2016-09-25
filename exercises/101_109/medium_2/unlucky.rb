require 'date'

def friday_13th?(year)
  count = 0
  1.upto(12) do |month|
    count += 1 if Date.new(year, month, 13).friday?
  end
  count
end

p friday_13th?(2015)
p friday_13th?(1986)
p friday_13th?(2017)