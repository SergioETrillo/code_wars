=begin
Basic regex tasks. Write a function that takes in a numeric code of any lenght. 
The function will check if the code begins with 1, 2, or 3 and return true if so. Return false otherwise.

You can assume the input will always be a nuber.

=end

def validate_code(code)
  #code === /^[123]\d*$/
  /^[123]\d*/ === code.to_s
end

=begin

def validate_code(code)
   /\A[123]/ === code.to_s
end

def validate_code(code)
  !!code.to_s[/^[1|2|3]/]
end

=end