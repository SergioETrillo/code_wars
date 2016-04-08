=begin

Description:

Create a method max_by that accepts a list and a block, runs the block for each item in the list, and returns the item with the highest block return value.

If you need help, here's a reference:

http://www.rubycuts.com/enum-max-by

=end

def max_by list, &block
  list.max_by(&block)
end