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
    iteration = 0
    
    while(idx_digit  > 1)
        if (current = digits[idx_digit-2]) < digits[idx_digit-1]
            puts "dentro if"
            right_digits.each do |d|
                puts "iteration: #{iteration}"
                iteration+=1
                #puts "d: #{d}"
                #puts "current: #{current}"
                if d > current
                    temp_d << d
                    puts "temp_d: #{temp_d}"
                end
                #puts "idx_2_swap: #{idx_2swap}"
            end
            idx_2swap = right_digits.index(temp_d.min) + idx_digit-1  # prev digits.index(temp_d.min)  should be from the right index, and with this it takes the left digits two so it can return a lower number
            puts "idx_digit: #{idx_digit}"
            puts "idx_2_swap: #{idx_2swap}"
            
            digits.swap!(idx_digit-2,idx_2swap)
            digits[idx_digit-1,digits.length-1]=digits[idx_digit-1,digits.length-1].sort!
            #swap with the appropiate digit within the right_digits subarray
            # find the right digit to swap ("8" in the case of 59853)
            # find the index of that number
            # perform the swap! in digits
            exists_bigger = true
            break
        end
        right_digits = digits[idx_digit-2..digits.length-1]  
        idx_digit -= 1
        puts "idx_digit: #{idx_digit}"
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