=begin

Description:

Make a program that takes input and returns "Fizz" if it is a multiple of 7, 
"Fang" if it is a mulitple of 49 AND 3, "Foo" if it is a multiple of 15, and 
"Far" if it is not divisible by any of those.

Note: Your program should only give one output. Note: When you are making your 
code you should check the divisibility such that it checks 49 and 3 first then 
7 then 15. Check the example test codes for examples of the outputs and inputs.


=end

def multiples(x)
  #Go on
  return "Fang" if x % 49 == 0 && x % 3 == 0
  return "Fizz" if x % 7 == 0
  return "Foo" if x % 15 == 0
  return "Far"
end

=begin

def multiples(x)
  return "Fang" if x % 147 == 0
  return "Fizz" if x %   7 == 0
  return "Foo"  if x %  15 == 0
  return "Far"
end

=end