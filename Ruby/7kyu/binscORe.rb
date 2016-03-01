=begin
Given a number n we will define it's scORe to be 0 | 1 | 2 | 3 | ... | n, 
where | is the bitwise OR operator.

Write a function that takes n and finds it's scORe.

Examples

n	scORe n
0	0
1	1
49	63
1000000	1048575


=end

def score(n)
  n==0? 0: 2**(n.to_s(2).length)-1
end

puts score(0)
puts score(1)
puts score(49)
puts score(1000000)


=begin
# the one submitted

def score(n)
  return 0 if n==0
  return 1 if n==1
  return 2**(n.to_s(2).length)-1
end

=end

=begin
# very inefficient, as it takes lots of memory
def score(n)
  (0..n).to_a.reduce(:|)
end

=end

=begin
# another inefficient approach, but very elegant! :)
def score(n)
  res = case n
    when 0 then 0
    when 1 then 1
    else score(n-1)|n
  end
  res        
end

=end