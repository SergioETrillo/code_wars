=begin

Description:

This is the second step to understanding FizzBuzz.

Your inputs: a positive integer, n, greater than or equal to one. 
n is provided, you have NO CONTROL over its value.

Your expected outputs: n, "Fizz", "Buzz", or "FizzBuzz" depending on the 
following rules:

Multiples of 5 and 3 return "FizzBuzz"
Multiples of 3 return "Fizz"
Multiples of 5 return "Buzz"
Your job is to write an algorithm that receives the input and outputs the
correct value.

=end

def pre_fizz(n)
    n%5==0 && n%3==0 ? "FizzBuzz" : n%3==0? "Fizz" : n%5==0? "Buzz": n 
end

=begin

def pre_fizz(n)
  case 0
    when n % 15 then 'FizzBuzz'
    when n % 3 then 'Fizz'
    when n % 5 then 'Buzz'
    else n
  end
end

=end