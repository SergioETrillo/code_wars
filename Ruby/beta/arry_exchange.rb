=begin

Description:

Array Exchange and Reversing

It's time for some array exchange! The objective is simple: To exchange between
two arrays but with one catch; the content of the exchanged array must be reversed.

my_array = ['a', 'b', 'c']
other_array= [1, 2, 3]
my_array.exchange_with!(other_array)
The expected output:

my_array = [3, 2, 1]
other_array = ['c', 'b', 'a']

=end


class Array
  def exchange_with!(other_array)
    #your code here
    temp = self.sort_by{ |i| i}.reverse!
    self = other_array.sort_by{ |i| i}.reverse!
    
  end
end