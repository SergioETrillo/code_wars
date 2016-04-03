=begin

Given a number, write a function to output its reverse digits. (e.g. given 123 
the answer is 321)

Negative numbers should be preserved.

=end

def reverseNumber(n)
  res = n.to_s.reverse.to_i
  n >=0 ? res: -res
end


=begin
# my variation
def reverseNumber(n)
  n >= 0 ? n.to_s.reverse.to_i : -n.to_s.reverse.to_i
end

=end

=begin

def reverseNumber(n)
  return (if n < 0 then -1 else 1 end) * n.abs.to_s.split('').reverse.join('').to_i
  
 # n.abs.to_s.split('').reverse.join('').to_i can be replaced by n.to_s.reverse.to_i
end

=end