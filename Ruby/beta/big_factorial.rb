=begin

The factorial of a number, n!, is defined for whole numbers as the product of 
all integers from 1 to n.

For example, 5! is 5 * 4 * 3 * 2 * 1 = 120

Most factorial implementations use a recursive function to determine the value
of factorial (n). However, this blows up the stack for large values of n - most systems cannot handle stack depths much greater than 2000 levels.

Write an implementation to calculate the factorial of arbitrarily large numbers.

Rules

n < 0 should return nil (None in python) n = 0 should return 1
n > 0 should return n! for any integer value of n

Note

Codewars limits the amount of data it will send back and forth, 
which may introduce a false ceiling for how high of a value of n it will accept. 
All tests use values less than this limit.

=end

def factorial(n)
    return nil if n<0
    array = (1..n).to_a
    res = 1
    array.each {|i| res*=i}
    res
end

=begin

def factorial(n)
  (2..n).reduce(1, :*) if n >= 0
end

=end