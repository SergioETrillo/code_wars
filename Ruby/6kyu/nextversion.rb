=begin

Description:

You're fed up about changing the version of your software manually. Instead, you
will create a little script that will make it for you.

Exercice

Create a function nextVersion, that will take a string in parameter, and will 
return a string containing the next version number.

For example:

nextVersion("1.2.3") === "1.2.4";
nextVersion("0.9.9") === "1.0.0.";
nextVersion("1") === "2";
nextVersion("1.2.3.4.5.6.7.8") === "1.2.3.4.5.6.7.9";
nextVersion("9.9") === "10.0";
Rules

All numbers, except the first one, must not be greater than 10: if there are, 
you have to set them to 0 and increment the next number in sequence.

You can assume all tests inputs to be valid.

=end

def nextVersion(version)
    # using a number seems to be the most elegant way to make this
    # make a full number removing the ".", sum 1, add the dots back...
    # converts the string to an integer and adds 1 to it
    # then convert back to string and adding the dots...
    
    num_ver = (version.split(".").map{|c| c.to_i}.join.to_i) + 1
    
    if num_ver.to_s.length == version.split(".").length
        res = num_ver.to_s.chars.map{|d| d+"."}.join
    else
        res = num_ver.to_s[0..1] + "." + num_ver.to_s[2..-1].chars.map{|d| d+"."}.join
    end
    res.chop
end

puts nextVersion("1.2.3")
puts nextVersion("9.9.9")
puts nextVersion("9.9")

=begin
# THE FANCIEST OF FANCIEST !!!!

def nextVersion(version)
  version.succ
end

=end
