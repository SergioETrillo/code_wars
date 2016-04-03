=begin

Description:

Write a function that removes each 9 that it is in between 7s.

seven_ate9('79712312') => '7712312'
seven_ate9('79797') => '777'
Input: String Output: String

=end

def seven_ate9(str)
  #your code here
  str.gsub("797","77")
end