=begin
authored kata
Password generator.

Create a function that generates a random password. Inputs will be:
    - size:(integer > 0) password size
    - a_z: (integer >=0): number of chars which are lower case (a-z)
    - upper_a_z: (integer >=0): number of chars which are capital case (A-Z)
    - digits: (integer >=0): number of chars which are digits
    -special: (integer >=0): number of chars which are special characters
     (For the purposes of this kata, a special character is any character from 
     "!"(ASCII decimal char 33 to "/" (ASCII decimal char 47)

Of course, size should be equal to the sum of all the remaining inputs, but if
it is not, the function will just print a warning, "warning, size do not match,
password of size X generated", (where X is the sum of the inputs a-z A-Z digits
and spec_chars), and provide the generated password.

if any of the parameters are not as specified above return an error message:
"error: wrong input" 

=end

def password_gen(size, a_z,upper_a_z,digits,special)
    #error_msg = "error: wrong input"
    return error_msg unless size.is_a?(Integer) && size > 0 && a_z.is_a?(Integer) && \
       a_z >= 0 && upper_a_z.is_a?(Integer) && upper_a_z >= 0 && \
       digits.is_a?(Integer) && digits >= 0 && special.is_a?(Integer) && \
       special >=0
    #puts "correct input"
    
end

puts password_gen(7,5,0,0,4)
puts password_gen("d",4,5,6,7)
