=begin

Description:

Create a method map that accepts a list and a block, runs the block for each item in the list, and returns a new array with the block return values.

If you need help, here's a reference:

http://www.rubycuts.com/enum-map

=end

def map list, &block
  list.map(&block)
end