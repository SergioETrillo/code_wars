=begin

Your dad doesn't really get punctuation, and he's always putting extra commas in when he posts. 
You can tolerate the run-on sentences, as he does actually talk like that, but those extra commas have to go!

Write a function called dadFilter that takes a string as argument and returns a string with the extraneous commas removed. 
The returned string should not end with a comma or any trailing whitespace.

if a group of commas at the end of the expression, remove them all
if a group of commas in the middle of the expression, just leave one

Test.describe("Basic tests") do
Test.assert_equals(dad_filter("all this,,,, used to be trees,,,,,,"), "all this, used to be trees")
Test.assert_equals(dad_filter("Listen,,,, kid,,,,,,"), "Listen, kid")
Test.assert_equals(dad_filter("Luke,,,,,,,,, I am your father,,,,,,,,,  "), "Luke, I am your father")
Test.assert_equals(dad_filter("i,, don't believe this round earth,,, show me evadence!!"), "i, don't believe this round earth,
show me evadence!!")
Test.assert_equals(dad_filter("Dead or alive,,,, you're coming with me,,,   "), "Dead or alive, you're coming with me")
end

=end

def dad_filter(string)
  #your code here
  s2 = string.strip.squeeze(",")
  s2[-1]=="," ? s2.chop : s2
end

=begin

def dad_filter(string) string.gsub(/,{2,}/,",").gsub(/,*\s*$/,"") end

def dad_filter(string)
  string.squeeze(", ").chomp(' ').chomp(',')
end

def dad_filter(string)
  string.strip.gsub(/,{2,}/, ",").gsub(/,\z/,"")
end

def dad_filter(string)
  string.gsub(/,+/, ',').gsub(/,? *$/, '')
end

def dad_filter(string)
  string.gsub(/,+/, ',').sub(/[, ]+\z/, '')
end


=end