=begin
Description:

Create a method partition that accepts a list and a block. It should return two arrays: the first, with all the elements for which the given block returned true, and the second for the remaining elements.

Here's a simple example:

animals = ["cat", "dog", "duck", "cow", "donkey"]
partition(animals){|animal| animal.size == 3}
    #=> [["cat", "dog", "cow"], ["duck", "donkey"]]
If you need help, here's a reference:

http://www.rubycuts.com/enum-partition

=end

def partition list, &block
  list.partition(&block)
end