=begin

Description:

Triple Trouble

Create a function that will return a string that combindes all of the letters of the three inputed strings in groups. Taking the first letter of all of the inputs and grouping them next to each other. Do this for every letter, see example below!

Ex) Input: "aa", "bb" , "cc" => Outpust: "abcabc"

Note: You can expect all of the inputs to be the same length.

=end


def triple_trouble(one, two, three)
  result = ""
  one.size.times do |i|
    result += one[i] + two[i] + three[i]
  end
  result
end

=begin

def triple_trouble(one, two, three)
  [one,two,three].map(&:chars).reduce(&:zip).join
end

=end