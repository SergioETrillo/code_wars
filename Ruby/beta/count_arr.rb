=begin

Write a function that takes an array and counts the number of each unique element present.

count(['james', 'james', 'john']) 
#=> { 'james' => 2, 'john' => 1}

=end

def count(array)
  # output is a hash: {k1: v1, k2: v2..., kn: vn}
  freq = Hash.new(0)
  array.each {|e| freq[e]+= 1}
  freq
end
puts(count(['james', 'james', 'john']))

=begin

# a more "classic" implementation

def count(array)
  result = {}
  if array.length == 0
    return result
  else 
    array.each { |element| 
      if result.include? element
        result[element] += 1
      else
        result[element] = 1
      end
    }
  end
  return result
end

=end