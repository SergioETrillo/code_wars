=begin

Description:

Create a method minmax_by that accepts a list and a block. The method should return an array containing the min and max list elements, based on their return values from the block

Here's a simple example:

minmax([3,2,5,4]){|item| item}  #=> [2,5] 
minmax([2,14,7,9]){|item| item.to_s}  #=> [14,9]
If you need help, here's a reference:

http://www.rubycuts.com/enum-minmax-by

=end

def minmax_by list, &block
  list.minmax_by(&block)
end