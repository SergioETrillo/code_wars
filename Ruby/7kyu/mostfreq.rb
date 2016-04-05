=begin

Description:

Write a program to find count of the most frequent item of an array.

Assume that input is array of integers.

Ex.:

input array: [3, -1, -1, -1, 2, 3, -1, 3, -1, 2, 4, 9, 3]
ouptut: 5
Most frequent number in example array is -1. It occures 5 times in input array.
FundamentalsData StructuresLoopsControl FlowBasic Language Features

=end

def most_frequent_item_count(collection)
  freq = collection.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  freq.empty? ? 0: freq.values.max 
end

=begin

def most_frequent_item_count(c)
  c.count(c.max_by{|x| c.count(x)})
end

=end

