=begin

Given a list of integers values, your job is to return the sum of the values; however,
if the same integer value appears multiple times in the list, you can only count it once in your sum.

For example:

[ 1, 2, 3] ==> 6

[ 1, 3, 8, 1, 8] ==> 12

[ -1, -1, 5, 2, -7] ==> -1

=end

def unique_sum(lst)
    # Your code here
    return lst.uniq.reduce :+
end

# another way is using each:
# sum= 0
# array.each {|e| sum+=e}
# return sum

puts unique_sum([10,10,10,10,10])
puts unique_sum(([1,2,3,4]))
puts unique_sum([2,2,2,8])
puts unique_sum([1,3,8,1,8])




=begin
# tests for the kata
describe "unique_sum" do
  it "works for some examples" do
    Test.assert_equals(unique_sum([1, 2, 3]), 6)
    Test.assert_equals(unique_sum([1, 3, 8, 1, 8]), 12)
    Test.assert_equals(unique_sum([-1, -1, 5, 2, -7]), -1)
    Test.assert_equals(unique_sum([1, 2, 3, 2, 1]), 6)
    Test.assert_equals(unique_sum([1, 2, 3, 4, 4, 5]), 15)
  end
end

=end