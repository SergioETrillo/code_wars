=begin

Given a time in a time format class, return it without year, month and day.

It should return a string including milliseconds with 3 decimals.

Example:

Time.new(2016, 2, 8, 16, 42, 59)
#Should return: 
"16:42:59,000"

=end

def convert(time)
  time.strftime("%H:%M:%S,%L")
end

=begin

def convert(time)
  time.strftime("%T,%L")
end

=end