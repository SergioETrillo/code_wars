=begin

Description:

Create a method grep that accepts a list and a regexp pattern, and returns a list of elements which match the pattern.

If you need help, here's a reference:

http://www.rubycuts.com/enum-grep

=end

def grep list, regexp
  list.grep(regexp)
end