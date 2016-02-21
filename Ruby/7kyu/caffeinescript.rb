=begin

Complete the function caffeineBuzz, which takes a non-zero integer as it's one argument.

If the integer is divisible by 3, return the string "Java".

If the integer is divisible by 3 and divisible by 4, return the string "Coffee"

If the integer is one of the above and is even, add "Script" to the end of the string.

Otherwise, return the string "mocha_missing!"

caffeineBuzz(1)   => "mocha_missing!"
caffeineBuzz(3)   => "Java"
caffeineBuzz(6)   => "JavaScript"
caffeineBuzz(12)  => "CoffeeScript"

=end

def caffeineBuzz(n)
  #your code here
  string="mocha_missing!"
  addScript = false
  if n% 3 == 0
      string = "Java"
      addScript = true
  end
  if n%3 == 0 and n%4 == 0
      string = "Coffee"
      addScript = true
  end
  if n%2 == 0 and addScript
      string += "Script"
  end
  string  
end

=begin
clever solution

def caffeineBuzz(n)
  str = ""
  str = "Java" if n%3==0
  str = "Coffee" if n%4==0 && n%3==0
  return "mocha_missing!" if str.empty?
  str += "Script" if n.even?
  str
end


=end