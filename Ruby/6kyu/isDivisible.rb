=begin
Create a function isDivisible(n,...) that checks if the first agrument n is divisible by all other arguments
(return true if no other arguments)

=end

def is_divisible(n,*args)
    divisible = true
    args.each do |a|
       if n % a != 0
           divisible = false
       end
    end
    divisible
end

puts is_divisible(2).to_s
puts is_divisible(4,3).to_s
puts is_divisible(12,1,2,3,4,6,12).to_s


=begin

def is_divisible(n, *divisors)
  divisors.all? { |div| n % div == 0 }
end

=end