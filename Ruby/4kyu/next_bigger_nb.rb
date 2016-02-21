=begin
4kyu
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

# extending class Array with useful swap methdo

class Array
    def swap!(a,b)
         self[a], self[b] = self[b], self[a]
    self
    end
end

def next_bigger(n)
    array_n = n.to_s.split(//)
    nb_digits = array_n.length
    idx_digit = nb_digits
    exists_bigger = false
    while(idx_digit  > 1)
        if array_n[idx_digit-2] < array_n[idx_digit-1]
            #puts("digit index is: #{idx_digit }")
            #puts("array[#{idx_digit-2}] is: #{array_n[idx_digit-2]}, array[#{idx_digit-1}] is: #{array_n[idx_digit-1]}")
            #puts("lets swap...")
            array_n.swap!(idx_digit-2,idx_digit-1)
            #puts("number swapped is: #{array_n.join.to_i}")
            for i in idx_digit ..nb_digits-1
                puts "inside for loop: i: #{i} index digit: #{idx_digit} nb_digits: #{nb_digits}"
                if(array_n[i]>array_n[idx_digit-1] && array_n[i]<array_n[idx_digit-2])
                    puts "special situation... changing index #{idx_digit-2} and #{i}"
                    array_n.swap!(idx_digit-2,i)
                    puts "just after swapping special situation"
                    array_n[idx_digit-2..nb_digits-1]=array_n[idx_digit-2..nb_digits-1].sort!
                    puts "just after sorting the remaining items"
                end
            end
            
            while idx_digit  < nb_digits
                if array_n[idx_digit-1] > array_n[idx_digit ]
                    puts "I need to swap #{array_n[idx_digit-1]} with #{array_n[idx_digit]}"
                    array_n.swap!(idx_digit-1,idx_digit)
                    
                end
                idx_digit += 1
            end
        
            exists_bigger = true
            break
        end
        idx_digit -= 1
    end
    if exists_bigger
         return array_n.join.to_i
     else
         return -1
    end
end


a = next_bigger(59884848495853)
puts("expected 59884848485539, result: #{a}")

=begin
a= next_bigger(1)    # to test 1 digit numbers, OK  
puts a
a = next_bigger(12)
puts("expected 21, result: #{a}")
a = next_bigger(4440)
puts("expected -1, result: #{a}")
a = next_bigger(18765)
puts("expected 81765, result: #{a}")

a = next_bigger(1234567890)
puts("expected 1234567908, result: #{a}")
=end

=begin

This solution works, but it is computationally very expensive as for n digits there are n! permutations!

def next_bigger(n)
  #your code here
 combinations_n= n.to_s.chars.to_a.permutation.map(&:join).map(&:to_i).uniq.sort!  # computationally very expensive 
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
=end