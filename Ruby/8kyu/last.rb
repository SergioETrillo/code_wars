=begin

Find the last element of a list.

Example:

last( [1,2,3,4] ) # => 4
last( "xyz" ) # => z
last( 1,2,3,4 ) # => 4
In javascript and CoffeeScript a list will be an array, a string or the list of
arguments.

(courtesy of haskell.org)

=end

# NOT COMPLETED

def last(*args)
  args[-1].is_a?(String) ? args[-1][-1] : args.flatten[-1]  
end

=begin

def last *x
 x = x.last
 x.class == Fixnum ? x : x[-1]
end

=end
