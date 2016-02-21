=begin

Return an array containing the numbers from 1 to N, where N is the parametered value. N will never be less than 1.

Replace certain values however if any of the following conditions are met:

If the value is a multiple of 3: use the value 'Fizz' instead
If the value is a multiple of 5: use the value 'Buzz' instead
If the value is a multiple of 3 & 5: use the value 'FizzBuzz' instead

=end

def fizzbuzz(n)
 result=(1..n).to_a.map do |e|
     if e % 3 == 0 && e % 5 == 0
         e = "FizzBuzz"
     elsif e % 3 == 0
         e = "Fizz"
     elsif e % 5 == 0
        e = "Buzz"
    else
        e
     end
 end
result
end

=begin

def fizzbuzz(n)
  (1..n).map { |x| 
    y = ''
    y += 'Fizz' if x % 3 == 0
    y += 'Buzz' if x % 5 == 0
    y == '' ? x : y
  }

#and the fanciest solution
def fizzbuzz(n)
  (1..n).map { |x| x%15==0 ? "FizzBuzz" : x%5==0 ? "Buzz" : x%3==0 ? "Fizz" : x }
end

=end
