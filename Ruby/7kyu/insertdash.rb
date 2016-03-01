=begin

Write a function insertDash(num) that will insert dashes ('-') between each two 
odd numbers in num. For example: if num is 454793 the output should be 4547-9-3.
Don't count zero as an odd number.

=end

def insert_dash(num)
  #convert num to string
  # iterate over the numbers, compare index and index+1
  # record the index where a dash is required (if s[i] odd and s[i+1] odd)
  # iterate again and add the dashes
  # return string
  num_str = num.to_s
  #res = num.to_s
  #size = num.to_s.length
  dash=[]
  for i in (0...num.to_s.length-1)
    #puts "num_str[i]%2: #{num_str[i]%2}"
    #puts "num_str[i+1%2: #{num_str[i+1]%2}"
    if (num_str[i].to_i)%2 != 0 && (num_str[i+1].to_i) %2 != 0
        dash << i+1
        #puts "res after insert: #{res}"
        #puts "num_str after insert: #{num_str}"
    end
  end
  dash = dash.each_with_index.map{|x,j| x+j}
  #print dash
  dash.length.times do |j|
      num_str.insert(dash[j],"-")
  end
  num_str
end
puts "test number: 454793"
puts insert_dash(454793)
puts insert_dash(123456)
puts insert_dash(1003567)
puts insert_dash(13579)

=begin
# REGEX TO THE RESCUE OF THE FANCIEST SOLUTION
def insert_dash(num)
  num.to_s.gsub(/(?<=[13579])([13579])/, '-\1')
end

=end

=begin

def insert_dash(num)
  arr = num.to_s.chars
  arr.each_with_index do |i, idx|
    if ((i.to_i % 2 != 0) && ((arr[idx + 1].to_i) % 2 != 0))  
      arr.insert((idx + 1), "-")
    end
  end
arr.join
end

=end

=begin

def insert_dash(num)
  #your code here
  num.to_s.split(/(?<=[13579])(?=[13579])/).join('-')
end

=end

=begin
#clear names, readible code
def insert_dash(num)
  digits = num.to_s.split('')
  digits.each_with_index do |x, index|
    if x.to_i.odd? && digits[index + 1].to_i.odd?
      digits[index] = x + '-'
    end
  end
  digits.join
end


=end