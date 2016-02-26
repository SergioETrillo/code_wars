=begin

Description:

Implement the method isRightTriangle that accepts 3 values 
a, b, c. The method should return true if a right triangle 
can be built with the sides of given length and false in 
any other case.

Psst!, Ask Pitagoras for more info, but don't tell him i sent 
you :)

=end

def isRightTriangle(a,b,c)
 #check a,b,c are positive numbers
 # determine h as maximum
 #check if h**2 = c1**2 + c2**2
 return false if (a <=0 || b <=0 || c <=0)
 vec=[a,b,c].sort
 return vec[2]**2 == vec[0]**2+vec[1]**2
end