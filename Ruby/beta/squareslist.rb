=begin

Create a function squares(x,n) that starts with a number (x) and returns an 
array of length (n) with squares of the previous number. If n is negative or 
zero, return an empty array/list.

Examples

squares(2,5)=[2,4,16,256,65536]
squares(3,3)=[3,9,81]

=end

def squares(x, n)
  #particular case    
  return [] unless n > 0
  # initialize array with x
  res =[x]
  # while i < n-1
  i=1
  while i <= n-1
    res << res[i-1]**2
    i+=1
  end
  res
end

puts(squares(2,5))

=begin

def squares(x, n)
    Array.new(n) {|e| x**2**e}
end

def squares(x, n)
  (0..n-2).inject([x]) { |n, i| n << n[i]**2 }
end


=end