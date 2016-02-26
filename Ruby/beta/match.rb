=begin

Create a method find that accepts a list and a block, and returns the first
item for which the block returns true. If no item in the list matches,
return nil.

If you need help, here's a reference:

http://www.rubycuts.com/enum-detect

=end

def find list, &block
  # your solution here
  list.find(&block)
end

=begin

def find list, &block
  list.detect(&block)
end

def find list
  list.each{ |l| return l if yield(l) } ; nil
end

def find list, &block
  # your solution here
  list.each do |item|
    return item if block.call item
  end
  nil
end

=end