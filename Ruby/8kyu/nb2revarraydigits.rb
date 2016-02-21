=begin

Description:

Given a non-negative integer, return an array containing a list of independent digits in reverse order.

Example:

348597 => [7,9,5,8,4,3]

=end

def digitize(n)
    #input is an number (n), it returns an array
    n.to_s.chars.reverse.map {|e| e.to_i}
end

=begin

def digitize(n)
    #input is an number (n), it returns an array
    n.to_s.chars.reverse.map(&:to_i)
end

=end