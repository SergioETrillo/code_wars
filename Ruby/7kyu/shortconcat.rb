=begin

Description:

Given 2 strings, a and b, return a string of the form: shorter+reverse(longer)+shorter.

In other words, the shortest string has to be put as prefix and as suffix of the reverse of the longest.

Strings a and b may be empty, but not null (In C# strings may also be null. Treat them as if they are empty.).
If a and b have the same length treat a as the longer producing b+reverse(a)+b

=end

def shorter_reverse_longer(a,b)
  #your code here
  # determine whose string is shorter
  # reverse longer string
  # concatenate shorter+rev(longer)+shorter
  # return string
  
  if a.length >= b.length
      return b+a.reverse+b
  else
      return a+b.reverse+a
  end
end

=begin
#fancy solution
def shorter_reverse_longer(a,b)
  b.length>a.length ? a+b.reverse+a : b+a.reverse+b
end

=end