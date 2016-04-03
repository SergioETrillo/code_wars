=begin

Description:

Write a function countVowels or count_vowels to count the number of vowels in a given string.

Notes:

Ignore the case.  (NOT TRUE!)
Return nil or None for non-string inputs.
Examples:

countVowels("abcdefg") => 2
countVowels(12) => nil

count_vowels("abcdefg") => 2
count_vowels(12) => nil

=end


def countVowels(str = '')
  vowels = 0
  return nil unless str.is_a? String
  str.downcase.chars.each do |c|
    if c == "a" || c == "e" || c == "i" || c == "o" || c == "u" || c =="A" \
    || c =="E" || c =="I" || c =="O" || c =="U"
          vowels += 1
    end
  end
  vowels
end