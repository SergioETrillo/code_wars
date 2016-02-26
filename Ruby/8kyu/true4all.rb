=begin

Create a method all? (JS: all) which takes an array, and a block (JS: function),
and returns true if the block (/function) returns true for every element in the
array. Otherwise, it should return false. If the array is empty, it should 
return true, since technically nothing failed the block (/function) test.

Here's a (Ruby) resource if you get stuck: http://www.rubycuts.com/enum-all

=end

# I could not make this one ... mmm blocks are not my strong point...

=begin

def all? array, &block
  array.all?(&block)
end

def all? array, &block
  array.each { |e| return false unless block.call(e) }
  true
end

def all? array, &block
  if array.all?(&block)
    true
  else
    false
  end
end

=end