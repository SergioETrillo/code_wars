=begin
Create a method to_h that accepts a list, and converts it to a hash of key-value pairs.

Here's a simple example:

animals = [["cat", "dog"], ["duck", "cow"]]
to_h(animals)
    #=> {"cat" => "dog", "duck" => "cow"}
If you need help, here's a reference:

http://www.rubycuts.com/enum-to-h
=end

def to_h list
    h={}
    list.each {|e| h[e[0]] = e[1]}
    list = h
end