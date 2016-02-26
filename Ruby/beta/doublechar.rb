=begin

Given a string, you have to return a string in which each charcter (case-sensitive) 
is repeated once.

double_char("String") ==> "SSttrriinngg"

double_char("Hello World") ==> "HHeelllloo  WWoorrlldd"

double_char("1234!_ ") ==> "11223344!!__  "

=end

def double_char(str)
    str.chars.map{|c| c+c}.join
end


=begin

def double_char(str)
  str.gsub /(.)/, '\1\1' 
end

=end