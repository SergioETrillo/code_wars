=begin

Create a method minmax that accepts a list and a block. The block itself should compare two elements, so the method can sort the elements and return the minimum and maximum as a 2-element array.

Here's a simple example:

minmax([3,2,5,4]){|a,b| a <=> b}  #=> [2,5] 
minmax([2,14,7,9]){|a,b| a.to_s <=> b.to_s}  #=> [14,9]
If you need help, here's a reference:

http://www.rubycuts.com/enum-minmax

=end

def minmax list, &block
  list.minmax(&block)
end

