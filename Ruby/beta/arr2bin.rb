=begin

Given an array containing only numbers, add all the elements and return the binary 
equivalent of that sum.

Note:The binary equivalent should be in string and the array should contain only
number otherwise return false.

arr2bin(1,2) == '11'
arr2bin(1,2,'a') == false

=end

def arr2bin(arr)
    return "0" if arr==[]
    begin
        result = arr.reduce(:+).to_s(2)
    rescue
        return false
    end
    result
end
puts arr2bin([])
puts arr2bin([2,3,"a"])


=begin

def arr2bin(arr)
  arr.inject(0, :+).to_s(2) rescue false
end

=end