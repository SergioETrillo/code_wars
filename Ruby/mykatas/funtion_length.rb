=begin
Description

Create a method or function which receives two arguments, an object and a positive integer n. It returns an array with methods names of the object which have exactly n characters

Examples:

methods_by_length 2, 1 # => [:+, :-, :*, :/, :%, :>, :<, :~, :&, :|, :^, :i, :!]
methods_by_length "h", 12 => [:instance_of?]
ignore the ":" at the beginning because is the symbol identifier

(adapted from https://github.com/JoshCheek/ruby-kickstart)

=end

def methods_by_length object, length
  object.methods.select {|word| word.length == length}
end