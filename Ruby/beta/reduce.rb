=begin

Create a method reduce that accepts a list and a block, and returns an 
aggregate object for that list. See the tests for examples.

If you need help, here's a reference:

http://www.rubycuts.com/enum-reduce

=end

def reduce list, &block
  list.reduce(&block)
end


=begin

def reduce list, &block
  aggregate = list[0]
  (1...list.length).each do |i|
    aggregate = block.call(aggregate, list[i])
  end
  aggregate
end

def reduce list, &block
  result = list[0]
  list[1..-1].each do |entry|
    result = yield(result, entry)
  end
  result
end


def reduce list, &block
  list.inject {|sum, item| block.call(sum, item) }
end






=end