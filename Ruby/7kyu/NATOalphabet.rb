=begin

In this kata, we're going to create the function nato that takes a word and returns a string spells the word using
the NATO phonetic alphabet.

There should be a space between each word in the returned string, and the first letter of each word should be capitalized.

For those of you that don't want your fingers to bleed, this kata already has a dictionary typed out for you.

=end

def nato(word)
  letters =  {
    "A"=> "Alpha",  "B"=> "Bravo",   "C"=> "Charlie",
    "D"=> "Delta",  "E"=> "Echo",    "F"=> "Foxtrot",
    "G"=> "Golf",   "H"=> "Hotel",   "I"=> "India",
    "J"=> "Juliett","K"=> "Kilo",    "L"=> "Lima",
    "M"=> "Mike",   "N"=> "November","O"=> "Oscar",
    "P"=> "Papa",   "Q"=> "Quebec",  "R"=> "Romeo",
    "S"=> "Sierra", "T"=> "Tango",   "U"=> "Uniform",
    "V"=> "Victor", "W"=> "Whiskey", "X"=> "X-ray",
    "Y"=> "Yankee", "Z"=> "Zulu"
  }
  #your code here
  # (check that there are only letters A-Z)
  # convert the word to capital letters
  # get the word and split it to an array of characters
  # take each character and substitute with the NATO phonetic alphabet
  # keep a variable to store all the substitutions, return that variable
  regex = /^[a-zA-Z]+$/  
  if !(regex === word)
      puts "Only letters and no spaces"
      return false
  end
  a_word = word.upcase.split(//)
  res = ""
  a_word.each do |e|
      res += letters[e] + " "
  end
  res.chop    # because last space is not required as no new letter coming
end 

=begin
# the fancy solutions (assume dictionary available)

def nato(word)
  word.upcase.chars.map { |c| $letters[c] }.join(' ')
end

def nato(word)
 word.upcase.split('').map{|x| letters.fetch"#{x}"}.join(' ')
end

=end