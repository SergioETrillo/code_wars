=begin

Create a method include? (JS include)that accepts a list and an item, and 
returns true if the item belongs to the list.

Ruby: If you need help, here's some reference material:

http://www.rubycuts.com/enum-include

=end

def include?(array,item)
    list.include?(item)
end

def include? array, item
    return false if (array & [item]).length ==0
    true
end

=begin

first solution fanciest, also

def include? array, item
  array.any? {|x| x == item}
end

=end