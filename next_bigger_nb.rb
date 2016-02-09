=begin
You have to create a function that takes a positive integer number and returns the next bigger number formed by the same digits:

next_bigger(12)==21
next_bigger(513)==531
next_bigger(2017)==2071
If no bigger number can be composed using those digits, return -1:

next_bigger(9)==-1
next_bigger(111)==-1
next_bigger(531)==-1

crafted solution

=end


def next_bigger(n)
  #your code here
 combinations_n= n.to_s.chars.to_a.permutation.map(&:join).map(&:to_i).uniq.sort!
 puts combinations_n
 indx = combinations_n.index(n)
 l = combinations_n.length
 puts l
 puts "index: #{indx}"
 puts combinations_n.index(n)
 if indx < (combinations_n.length-1)
     res = combinations_n[indx+1]
 else 
     res = -1 
 end
 return res
end