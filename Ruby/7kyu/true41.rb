=begin

Description:

Create a method one? (JS one) that accepts two params, a list and a block 
(JS: a function), and returns true only if the block (/function) returns true 
for exactly one item in the array

Ruby: If you need help, here's a reference:

http://www.rubycuts.com/enum-one

=end

def one? list, &block
    list.one?(&block)
end

=begin

fanciest sol is the one?

def one? list, &block
  list.select(&block).size == 1
end


def one? list, &block
  list.map(&block).count(true) == 1
end

def one? list, &block
  list.count(&block) == 1
end


=end