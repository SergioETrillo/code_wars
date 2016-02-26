=begin

Are the numbers in order?

In this Kata, your function receives an array of positive integers as input. 
Your task is to determine whether the numbers are in ascending order.

For the purposes of this Kata, you may assume that all inputs are valid 
(i.e. arrays containing only positive integers with a length of at least 2).

For example:

Extra Challenge: If time, try to optimise and shorten your code as much as
possible.

=end

# it is in javascript so not continued, but probably the method would be:

def in_order?(array)
    array == array.sort
end

