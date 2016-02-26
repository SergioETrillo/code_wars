=begin

Write a function that returns the number of '2's in the factorization of a 
number.
For example,

two_count(24)
should return 3, since the factorization of 24 is 2^3 x 3

two_count(17280)
should return 7, since the factorization of 17280 is 2^7 x 5 x 3^3
The number passed to two_count (twoCount) will always be a positive 
integer greater than or equal to 1.


=end

def two_count(n)
  # your code here
  counter = 0
  while n%2 == 0
    n = n / 2
    counter+=1
  end
  counter
end

=begin

def two_count(n)
  # your code here
  # if odd, return 0
  return 0 if n%2==1
  # otherwise do it inductively
  return 1+two_count(n/2)
end

=end