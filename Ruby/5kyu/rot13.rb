=begin

ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters after it in 
the alphabet. ROT13 is an example of the Caesar cipher.

Create a function that takes a string and returns the string ciphered with Rot13. If there are numbers or 
special characters included in the string, they should be returned as they are. Only letters from the 
latin/english alphabet should be shifted, like in the original Rot13 "implementation".

Please note that using "encode" in Python is considered cheating

=end

def rot13(string)
  arr_str = string.chars
  arr_str.map! do |e|
      if /[A-Za-z]/ === e
        if e > "Z"  # minuscule
            ((((e.ord - "a".ord) + 13) % 26) +"a".ord).chr
        else  # capital letter
            ((((e.ord - "A".ord) + 13) % 26) +"A".ord).chr
        end
      else #not a letter, return the same
          e
      end
  end
  arr_str.join
end

puts(rot13("Test"))

=begin
#very fancy solution!!

def rot13(string)
  string.tr("A-Za-z", "N-ZA-Mn-za-m")
end

def rot13(string)
  string.gsub /[a-zA-Z]/ do |s|
    ascii = s.ord
    base = if ascii >= 'a'.ord then 'a'.ord else 'A'.ord end
    ((ascii - base + 13) % 26 + base).chr
  end
end

def rot13(string)
  origin = ('a'..'z').to_a.join + ('A'..'Z').to_a.join
  cipher = ('a'..'z').to_a.rotate(13).join + ('A'..'Z').to_a.rotate(13).join
  string.tr(origin, cipher)
end



=end