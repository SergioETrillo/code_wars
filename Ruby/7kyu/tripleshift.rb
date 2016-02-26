=begin

Much cooler than your run-of-the-mill Fibonacci numbers, the Triple Shiftian 
are so defined: T[i] = 4 * T[i-1] - 5 * T[i-2] + 3 * T[i-3].

You are asked to create a function which accept a base with the first 3 numbers
and then returns the nth element.

triple_shiftian([1,1,1],25) == 1219856746
triple_shiftian([1,2,3],25) == 2052198929
triple_shiftian([6,7,2],25) == -2575238999
triple_shiftian([3,2,1],35) == 23471258855679
triple_shiftian([1,9,2],2) ==  2

=end

def triple_shiftian(base,n)
  return base[n] if n < 3   # redundant if we use i+2 i+1 and i as indices
  i=2
  (n-2).times do
      base << 4*base[i] -5*base[i-1] +3*base[i-2]
      i+=1
  end
  base[-1]
end

puts triple_shiftian([1,9,2],2)
#puts "******************************************"
puts triple_shiftian([1,1,1],25)
#puts "******************************************"
puts triple_shiftian([1,1,1],1)
#puts "******************************************"
puts triple_shiftian([1,1,1],2)


=begin

def triple_shiftian(base,n)
  (0..n).each { |i| base << 4 * base[i+2] - 5 * base[i+1] + 3 * base[i] }
  base[n]
end

=end