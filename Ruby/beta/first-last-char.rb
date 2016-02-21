=begin

It's pretty straightforward. Your goal is to create a function that removes the first and last characters of a string. 
You're given one parameter.

=end


def remove_char(s)
  #your code here
  array = s.chars
  size = array.length
  array =array[1..size-2]
  array.join
end

=begin

def remove_char(s)
  s[1...-1]
end

=end