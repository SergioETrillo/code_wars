=begin

Description:

Create a method max that accepts a list and a block, runs the block for each item in the list, and returns the item with the highest block return value.

If you need help, here's a reference:

http://www.rubycuts.com/enum-max

=end

def max list, &block
  list.max(&block)
end