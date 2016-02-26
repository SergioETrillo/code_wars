=begin

An abundant number or excessive number is a number for which the sum of its proper 
divisors is greater than the number itself.

The integer 12 is the first abundant number. Its proper divisors are 1, 2, 3, 4 and 6
for a total of 16 (> 12).

Derive function abundantNumber(num)/abundant_number(num) which returns true/True
if num is abundant, false/False if not.

=end

def abundant_number?(num)
    sum_divisors = 1
    (2..(num**0.5)).each { |i| sum_divisors += (i+num/i) if num%i == 0 }
    sum_divisors > num
end

=begin

def abundant_number?(num)
  (1..(num / 2)).select { |i| num % i == 0 }.inject(:+) > num
end

def abundant_number?(num)
(1..(num-1)).select { |x| num % x == 0}.inject(0, &:+) > num
end

def abundant_number?(num)
  divs(num).inject(0,:+)>num
end

def divs(num)
  res=[]; i=2
  while i<num do
    if num%i==0 then res+=[i] end
    i+=1
  end
  return res
end

def abundant_number?(num)
  1.upto(num/2).inject(0){|s, i| num % i == 0 ? s + i : s} > num
end



=end