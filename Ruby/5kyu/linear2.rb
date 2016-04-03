=begin

Description:

Consider a sequence u where u is defined as follows:

The number u(0) = 1 is the first one in u.
For each x in u, then y = 2 * x + 1 and z = 3 * x + 1 must be in u too.
There are no other numbers in u.
Ex: u = [1, 3, 4, 7, 9, 10, 13, 15, 19, 21, 22, 27, ...]

1 gives 3 and 4, then 3 gives 7 and 10, 4 gives 9 and 13, then 7 gives 15 and 22 and so on...

Task:

Given parameter n the function dbl_linear (or dblLinear...) returns the element u(n) of the ordered (with <) sequence u.

Example:

dbl_linear(10) should return 22

Note:

Focus attention on efficiency
Fundamentals

=end

def tuple_u(u)
    tuple = [2*u+1,3*u+1]
end

def root(n)
    k = 1
    k += 1 if 2**k < n
    k
end


def dbl_linear(n)
      #k = Math.log2(n).to_i + 1
      ary = [1]
      
      1.upto(n+1) do |i|   
          ary << 2 * ary[i-1] + 1
          #p ary
          ary << 3 * ary[i-1] + 1
          #ary = ary.sort.uniq
          #p "iteracion: #{i} ary: #{ary}"
          
      end
      
      ary
     
end

#p dbl_linear(10)
p dbl_linear(20)
#p dbl_linear(10)
