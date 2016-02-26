=begin

Create a method drop that accepts a list, and a number n, and returns a copy 
of the list that skips the first n elements.

If you need help, here's a reference:

http://www.rubycuts.com/enum-drop

=end

def drop list, n
  list[n,-1]
end

=begin
it seems there is a drop method in the array that does exactly this
=end