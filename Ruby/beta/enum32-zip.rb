=begin

Description:

Create a method zip that accepts two lists, and combines their result into a single array, like so:

first = ['a', 'c', 'e']
second = ['b', 'd', 'f']
zip(first, second)
    #=> ['a', 'b', 'c', 'd', 'e', 'f']
If you need help, here's a reference:

http://www.rubycuts.com/enum-zip/

=end

def zip first, second
  first.zip(second).flatten
end