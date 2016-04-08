=begin

Description:

Create a method select that accepts a list and a block, and returns a new array of elements for which the given block returns true.

If you need help, here's a reference:

http://www.rubycuts.com/enum-select

=end

def select list, &block
  list.select(&block)
end