1)

2)

3)  My string looks like this now: pumpkins
    My array looks like this now: ["pumpkins", "rubtabaga"]

    The += is reassignment. It creates a new strinng object within the method, 
    and the original string is untouched.

    The << is modification. It uses the obect that was passed in and appends it.
    The method array variable and original array variable point to same object so
    the original array varialbe is modified.

4) My string looks like this now: rutabaga
   My array looks like this now: ["pumpkins"]

   The gsub! modfies the existing object. 

   While the an_array_param = ['pumpkins,' 'rubataga'] is reassignment and Ruby creates a
   new object within the method. The original object is not modified.


5)
def color_value(color)
  color == "blue" || color == "green" 
end