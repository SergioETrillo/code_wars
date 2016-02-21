=begin

Description:

In this Kata we are passing a number (n) into a function.

Your code will determine if the number passed is even (or not).

The function needs to return either a true or false.

Numbers may be positive or negative, integers or floats.

Floats are considered UNeven for this kata.

=end

def test_even(n)
  #Your code here!
  # check if number is float (n%1 == 0) if so, even
  # if not, number even, check if even %2
  # returns boolean
  even = true
  if n%1 != 0
      even = false
  end
  if n%2 != 0
      even = false
  end
  return even
end

=begin
# clever solutions, amanzing!

def test_even(n)
  n % 2 == 0
end

=end