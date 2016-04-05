=begin

Description:

Find the difference between the sum of the squares of the first n natural numbers (1 <= n <= 100) and the square of their sum. For example, when n = 10:

1**2 + 2**2 + ... + 10**2 = 385

The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)**2 = 55**2 = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

Example (Ruby)

difference_of_squares(10)
# => 2640
FundamentalsData

=end

def difference_of_squares(x)
  square_of_sum = (1..x).to_a.reduce(0) {|sum, e| sum += e**2}
  sum_squared = (1..x).to_a.reduce(:+) ** 2
  sum_squared - square_of_sum 
end



=begin

def difference_of_squares(x)
  r = 1..x
  r.inject(:+) ** 2 - r.map{|x| x ** 2 }.inject(:+)
end

=end