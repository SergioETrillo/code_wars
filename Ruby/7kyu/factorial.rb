=begin

Description:

In mathematics, the factorial of integer 'n' is written as 'n!'. It is equal to 
the product of n and every integer preceding it. For example: 5! = 1 x 2 x 3 x 4 x 5 = 120

Your mission is simple: write a function that takes an integer 'n' and returns 'n!'.

You are guaranteed an integer argument. For any values outside the positive 
range, return null, nil or None .

Note: 0! is always equal to 1. Negative values should return null;

For more on Factorials : http://en.wikipedia.org/wiki/Factorial

=end

# This function should return n!
def factorial(n)
  return nil if n < 0
  n < 2 ? 1 : n*factorial(n-1)
end

=begin

# a nice non recursive solution

def factorial(n)
  n < 0 ? nil : (2..n).reduce(1, :*)
end

=end