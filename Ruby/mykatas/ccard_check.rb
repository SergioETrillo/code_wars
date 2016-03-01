=begin

#Description
Write a function that checks whether a credit card number is correct or not, 
using the Luhn algorithm.

The algorithm is as follows:

* From the rightmost digit, which is the check digit, moving left, double the
value of every second digit; if the product of this doubling operation is greater
than 9 (e.g., 8 × 2 = 16), then sum the digits of the products (e.g., 16: 1 + 6 = 7,
18: 1 + 8 = 9) or alternatively subtract 9 from the product (e.g., 16: 16 - 9 = 7,
18: 18 - 9 = 9).
* Take the sum of all the digits.
* If the total modulo 10 is equal to 0 (if the total ends in zero) then the number
is valid according to the Luhn formula; else it is not valid.

The input is a string with the full credit card number, in groups of 4 digits 
separated by spaces, i.e. 1234 5678 9012 3456

##Examples 
```
         valid_card?("5457 6238 9823 4311") # -> true
         valid_card?("5457 6238 9323 4311") # -> false
```
for reference check: https://en.wikipedia.org/wiki/Luhn_algorithm

=end

def valid_card?(card)
    card=card.delete!(" ").chars
    evens = 0
    odds = 0
    card.each_index do |i|
        if i%2 == 0
            double = card[i].to_i*2
            double >9? evens += double-9 : evens += double 
        else
            odds += card[i].to_i
        end
    end
    (evens+odds)%10 == 0
end

def crc_calc(card)
    card=card.delete!(" ").chop.chars
    evens = 0
    odds = 0
    card.each_index do |i|
        if i%2 == 0
            double = card[i].to_i*2
            #puts "double: #{double}"
            double >9? evens += double-9 : evens += double 
        else
            odds += card[i].to_i
        end
    end
    ((evens+odds)*9)%10
end

puts valid_card?("5457 6238 9823 4311")  #true
puts valid_card?("5457 6238 9323 4311")  #false
puts valid_card?("5457 6238 9823 4311")  #true
puts valid_card?("5457 6238 9823 4311")  #true
puts valid_card?("2457 6238 9823 4311")  #false
puts valid_card?("1234 5678 9012 3456")  #false
puts valid_card?("1234 5678 9012 3452")  #true
puts valid_card?("1111 1111 1111 1117")  #true
#true
puts "trues"
puts valid_card?("1111 1111 1111 1117")
puts valid_card?("2222 2222 2222 2224")
puts valid_card?("3333 3333 3333 3331")
puts valid_card?("4444 4444 4444 4448")
puts valid_card?("5555 5555 5555 5557")
puts valid_card?("6666 6666 6666 6664")
puts valid_card?("7777 7777 7777 7771")
puts valid_card?("8888 8888 8888 8888")
puts valid_card?("9999 9999 9999 9995")
puts valid_card?("0000 0000 0000 0000")

puts "check: #{valid_card?('1234 5678 9012 3452')}"

#puts crc_calc("5457 6238 9823 4311")
#puts crc_calc("1234 5678 9012 3456")
puts crc_calc("1111 1111 1111 1111")
puts crc_calc("2222 2222 2222 2222")
puts crc_calc("3333 3333 3333 3333")
puts crc_calc("4444 4444 4444 4444")
puts crc_calc("5555 5555 5555 5555")
puts crc_calc("6666 6666 6666 6666")
puts crc_calc("7777 7777 7777 7777")
puts crc_calc("8888 8888 8888 8888")
puts crc_calc("9999 9999 9999 9999")
puts crc_calc("0000 0000 0000 0000")