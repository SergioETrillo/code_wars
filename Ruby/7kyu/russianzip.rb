=begin

Description:

You should write a simple function that takes string as input and checks if it is a valid Russian postal code, returning true or false.

A valid postcode should be 6 digits with no white spaces, letters or other symbols. Empty string should also return false.

Please also keep in mind that a valid post code cannot start with digit 0, 5, 7, 8 or 9

Valid postcode example 198328, 310003, 424000

Invalid postcode examples 12A483, 1@63, 111, 056879

=end

def zipvalidate(postcode)
    # how complex is to get right the regex! 
    # I was sure the expression was /^[1-46][0-9]{5}$/ but it seems it does not work
    # so lets do it the traditional way
    (postcode =~ /[1-46][0-9]{5}/) != nil
end

puts "los del false"
puts zipvalidate("711111")
puts zipvalidate("012345")
puts zipvalidate("512345")
puts zipvalidate("812345")
puts zipvalidate("912345")
puts zipvalidate("12345")
puts zipvalidate("1s2345")
puts zipvalidate("1 2345")
puts "el raro: #{zipvalidate("")}"
puts "los del true"
puts zipvalidate("123456")


puts zipvalidate("125262")
puts zipvalidate("223456")
puts zipvalidate("323456")
puts zipvalidate("423456")
puts zipvalidate("663456")

=begin

def zipvalidate(postcode)
  /^[^05789\D]\d{5}$/ === postcode
end

def zipvalidate(postcode)
  !!(postcode =~ /^[1-46]\d{5}$/)
end

def zipvalidate(postcode)
  not (postcode =~ /^[12346]\d{5}$/).nil?
end

def zipvalidate(postcode)
  /\A[1-46]\d{5}\z/ === postcode
end

def zipvalidate(postcode)
  postcode =~ /^[12346]\d{5}$/ ? true : false
end

def zipvalidate(postcode)
  (postcode =~ /[1-4|6]\d{5}/) == 0
end

def zipvalidate(postcode)
  return false if postcode == ''
  return false if ['0', '5', '7', '8', '9', ' '].include?(postcode[0])
  
  /^\d{6}$/ =~ postcode ? true : false
  
end

=end