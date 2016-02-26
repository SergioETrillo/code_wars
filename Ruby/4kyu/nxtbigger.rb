=begin
4kyu
You have to create a function that takes a positive integer number and returns 
the next bigger number formed by the same digits:
next_bigger(12)==21
next_bigger(513)==531
next_bigger(2017)==2071
If no bigger number can be composed using those digits, return -1:

next_bigger(9)==-1
next_bigger(111)==-1
next_bigger(531)==-1

crafted solution

=end

# extending class Array with useful swap method

class Array
    def swap!(a,b)
         self[a], self[b] = self[b], self[a]
    self
    end
end

def next_bigger(n)
    digits = n.to_s.split(//)
    idx_digit = digits.length
    exists_bigger = false
    idx_2swap = nil
    right_digits = [digits[idx_digit-1]]
    temp_d = []
    
    while(idx_digit  > 1)
        if (current = digits[idx_digit-2]) < digits[idx_digit-1]
            right_digits.each do |d|
                if d > current
                    temp_d << d
                end
            end
            idx_2swap = right_digits.index(temp_d.min) + idx_digit-1 

            
            digits.swap!(idx_digit-2,idx_2swap)
            #after swapping values, return the sorted version of the remaining digits to the right
            digits[idx_digit-1,digits.length-1] = digits[idx_digit-1,digits.length-1].sort!
            exists_bigger = true
            break
        end
        right_digits = digits[idx_digit-2..digits.length-1]  
        idx_digit -= 1
    end
    
    if exists_bigger
         return digits.join.to_i
     else
         return -1
    end
end


a = next_bigger(59853)
puts("expected 83559, result: #{a}")
a = next_bigger(414)
puts("expected 441, result: #{a}")
a = next_bigger(7)
puts("expected -1, result: #{a}")

=begin

def next_bigger n
  max = maxed n
  (n+1..max).each { |i| return i if max == maxed(i) }
  -1
end

def maxed n
  n.to_s.split('').sort.reverse.join.to_i
end

=end

=begin

def find_next(digits)
  first = digits.last
  new_top_idx = digits.sort!.index { |n| n > first } # get next
  new_top = digits.delete_at(new_top_idx)
  digits.reverse + [new_top]
end

def next_bigger(n)
  digits = n.to_s.split(//).map(&:to_i).reverse

  (0...(digits.length - 1)).each do |idx|
    if digits[idx + 1] < digits[idx]
      digits[0..(idx + 1)] = find_next(digits[0..(idx + 1)])
      return digits.reverse.join.to_i
    end
  end
  -1
end

=end

=begin

def next_bigger(n)
  ordering = n.to_s.split('').map(&:to_i)
  k = nil

  for i in 0...ordering.size - 1
    k = i if ordering[i] < ordering[i + 1]
  end

  return -1 unless k
  l = nil

  for i in k ... ordering.size
    l = i if ordering[k] < ordering[i]
  end

  ordering[l], ordering[k] = ordering[k], ordering[l]

  new_order = (ordering.take(k + 1) + ordering[k + 1 .. -1].reverse)
  new_order.join.to_i
end

=end

=begin

def next_bigger(n)
  return -1 if no_bigger?(n)
  find_next_bigger(n)
end

def no_bigger?(n)
  chars = n.to_s.chars
  chars == chars.sort.reverse
end

def sorted(n)
  n.to_s.chars.sort
end

def find_next_bigger(n)
  sorted_nums = sorted(n)
  n_ = n
  loop do
    n_ += 1
    return n_ if sorted_nums == sorted(n_)
  end
end

=end

=begin

def next_bigger(n)
  nums = n.to_s.split('')

  endpoint = nums.length - 1
  suffix = endpoint - (nums.reverse_each.each_cons(2).find_index { |(x,y)| x > y } || endpoint)
  return -1 if suffix <= 0

  pivot = endpoint - nums.reverse_each.find_index { |i| i > nums[suffix - 1] }
  
  nums[suffix - 1], nums[pivot] = nums[pivot], nums[suffix - 1]
  nums[suffix..-1] = nums[suffix..-1].reverse
  nums.join.to_i
end

=end

=begin

def next_bigger(n)
 set_arr = n.to_s.chars.sort {|x,y| y <=> x}
 max = set_arr.join('').to_i
 x = n

 # Check already biggest
 return -1 if n == max
 
 # Find next bigger
 while (x != max)
   x += 1
   return x if x.to_s.chars.sort {|x,y| y <=> x} == set_arr
 end
 
end

=end