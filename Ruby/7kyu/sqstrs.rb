=begin
Description:

This kata is the first of a sequence of four about "Squared Strings".

You are given a string of n lines, each substring being n characters long: For example:

s = "abcd\nefgh\nijkl\nmnop"

We will study some transformations of this square of strings.

Vertical mirror: vert_mirror (or vertMirror or vert-mirror)
vert_mirror(s) => "dcba\nhgfe\nlkji\nponm"
Horizontal mirror: hor_mirror (or horMirror or hor-mirror)
hor_mirror(s) => "mnop\nijkl\nefgh\nabcd"
or printed:

vertical mirror   |horizontal mirror   
abcd --> dcba     |abcd --> mnop 
efgh     hgfe     |efgh     ijkl 
ijkl     lkji     |ijkl     efgh 
mnop     ponm     |mnop     abcd
Task:

Write these two functions
and

high-order function oper(fct, s) where

fct is the function of one variable f to apply to the string s (fct will be one of vertMirror, horMirror)
Examples:

s = "abcd\nefgh\nijkl\nmnop"
oper(vert_mirror, s) => "dcba\nhgfe\nlkji\nponm"
oper(hor_mirror, s) => "mnop\nijkl\nefgh\nabcd"
Note:

The form of the parameter fct in oper changes according to the language. You can see each form according to the language in "Your test cases".
Forthcoming katas will study other tranformations.
Fundamentals

def apply_math(fn, a, b)
  a.send(fn, b)
end

apply_math(:+, 1, 2) # => 3


=end

def vert_mirror(strng)
  strng.split("\n").map { |str| str.reverse }.join("\n")
end

def hor_mirror(strng)
  strng.split("\n").reverse.join("\n")
end

def oper(fct, s) 
  fct.call(s)
end

# s = "abcd\nefgh\nijkl\nmnop"
# p oper(method(:vert_mirror), s)   # check the syntax
# p oper(method(:hor_mirror), s)

=begin



=end