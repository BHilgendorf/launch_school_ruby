#Write assertation that will fail unless ' employee.hire' raises a 
# NoExperienceError exception



#solution
assert_raises(NoExperienceError) do
  employee.hire
end


