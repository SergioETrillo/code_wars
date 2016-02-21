=begin

Description:

Hello, this is my first Kata so forgive me if it is of poor quality.

In this Kata you should try to fix all the syntax errors found in the code.

Once you think all the bugs are fixed run the code to see if it works. A correct solution should return:

false if either of the arguments are not numbers
a % b plus b % a if both arguments are numbers

=end


def my_first_kata(a,b)
  #your code here
  return false unless a.is_a?(Integer) && b.is_a?(Integer)
  a%b + b%a
end

=begin
def my_first_kata(a,b)
  a % b + b % a rescue false
end
=end