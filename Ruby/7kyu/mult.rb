=begin

Description:

Define a function mul(a, b) that takes two non-negative integers a and b and
returns their product.

You should only use the + and/or - operators. Using * is cheating!

You can do this iteratively or recursively.

=end

def mul(a, b)
  return 0 if a == 0 or b == 0
  a + mul(a,b-1)
end

=begin


def mul(a,b)
  Array.new(b,a).reduce(:+) || 0
end


=end