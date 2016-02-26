=begin

We give you an Array of friend's list.

Write a method called greetingForAllFriends, with this signature:

greeting_for_all_friends(friends)
This method takes an array of friends name and return a greeting messages Array.

Message sample: for the friend "Bilal" we get "Hello, Bilal!"

Rules:

If the argument is null, the method should return null/nil/None according to 
the given language (null for JS, None for Python and so on)
If the argument is an empty array, the method should return null/nil/None, as 
stated above
If the argument is a valide array of strings, the method should return a hello
message for every array entry


=end

def greeting_for_all_friends(friends)
    return nil if friends ==[] || friends == nil
    friends.map{|e| "Hello, "+e}
end