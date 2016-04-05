=begin

Description:

Find the greatest common divisor of two positive integers. The integers can be
large, so you need to find a clever solution.

The inputs x and y are always greater or equal to 1, so the the greatest common
divisor will always be an integer that is also greater or equal to 1.
AlgorithmsOptimizationFundamentalsRecursionComputability TheoryTheoretical
Computer Science

=end

def mygcd(x,y)
    #your code here
    arr = [x,y].sort_by { |e| e }.reverse!
    #p arr
    dividend = arr.first
    divisor = arr.last
    #p dividend
    #p divisor
    remainder = dividend % divisor
    p "divisor: #{divisor} remainder: #{remainder}"
    return divisor if remainder == 0
    mygcd(divisor,remainder)
end

p mygcd(30,12)

=begin

def mygcd(x,y)
  y === 0 ? x : mygcd(y, x % y)
end

=end