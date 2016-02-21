=begin

Description:

An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines whether
a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.

is_isogram("Dermatoglyphics" ) == true
is_isogram("aba" ) == false
is_isogram("moOse" ) == false # -- ignore letter case

=end

def is_isogram(string)
  isogram = true
  my_array = string.downcase.split(//) 
  my_array.sort!
  my_array.each_index do |x|
      if my_array[x+1] == my_array[x]
          return false
      end
  end
  isogram
end

=begin

def is_isogram(string)  another solution using uniq method
  
  # your code here
  # boolean return, true if no repeating letter, false otherwise
  # empty string: true
  # Change to downcase.
  # Convert string to array
  # check if any of the elements of the array is duplicated, then true if not false
  # another way: using uniq, if the length are the same then isogram true
  isogram = false
  my_array = string.downcase.split(//)
  size = my_array.length
  if size == my_array.uniq.length
      isogram = true
  end
  isogram
end

=end

puts is_isogram("Helo").to_s
puts is_isogram("Hello").to_s
puts is_isogram("").to_s

=begin

# fancy solutions

def is_isogram(string)
  string.downcase.chars.uniq == string.downcase.chars
end

def is_isogram(string)
  letters = string.downcase.chars
  letters == letters.uniq
end

=end


