=begin

Description:

You will get an array of numbers.

Every preceding number is smaller than the one following it.

Some numbers will be missing, for instance:

[-3,-2,1,5] //missing numbers are: -1,0,2,3,4
Your task is to return an array of those missing numbers:

[-1,0,2,3,4]

=end

def find_missing_numbers(arr)
  (arr[0]..arr[-1]).to_a - arr
end

=begin

def find_missing_numbers(arr)
  arr.each_cons(2).inject([]) { |missing, (n, m)|
    missing += ((n + 1)...m).to_a unless n + 1 == m 
    missing
  }
end

def find_missing_numbers(arr) arr.length<2 ? [] : Array(arr[0]...arr[-1]).select{|a| arr.index(a)==nil} end

=end