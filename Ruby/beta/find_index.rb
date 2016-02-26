=begin

Create a method find_index that accepts a list and a block, and returns index
of the first item for which the block returns true. If no item in the list
matches, return nil.

If you need help, here's a reference:

http://www.rubycuts.com/enum-find-index

=end

def find_index list, &block
  list.find_index(&block)
end

=begin

def find_index list, &block
  list.each_with_index { |item, index| return index if yield item }
  return nil
end


def find_index list, &block
  list.each_with_index do |item, index|
    return index if block.call(item)      # block.call == yield
  end
  nil
end

=end