=begin
 Make a program that filters a list of strings and returns a list with only 
 your friends name in it. All your friends only have four letter in their name.

Ex: Input = ["Ryan", "Kieran", "Jason", "Yous"], Output = ["Ryan", "Yous"]

=end

def friend(friends)
  friends==[] ? [] : friends.select!{|f| f.length==4}
end