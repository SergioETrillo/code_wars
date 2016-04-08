=begin

Description:

Create a method first that accepts a list and an optional parameter n. If n is unspecified, it returns just the first element of the list. If n is specified, it returns that number of elements from the beginning of the list.

If you need help, here's a reference:

http://www.rubycuts.com/enum-first

=end

def first list, n=nil
  return list.first(n) unless n.nil?
  list.first
end

=begin

def first list, n=nil
  n ? list.first(n) : list.first
end

=end
