=begin

Description:

A variation of determining leap years, assuming only integers are used and years
can be negative and positive.

Write a function which will return the days in the year and the year entered in
a string. For example 2000, entered as an integer, will return as a string 2000
has 366 days

There are a few assumptions we will accept the year 0, even though there is no
year 0 in the Gregorian Calendar.

Also the basic rule for validating a leap year are as follows

Most years that can be divided evenly by 4 are leap years.

Exception: Century years are NOT leap years UNLESS they can be evenly divided by
400.

So the years 0, -64 and 2016 will return 366 days. Whilst 1974, -10 and 666 will
return 365 days.

=end


def abs_leap?(year)
    return true if year.abs % 400 == 0
    return false if year.abs % 100 == 0
    return true if year.abs % 4 == 0
    return false
end

puts(abs_leap?(-300))
puts(abs_leap?(-2000))
puts(abs_leap?(-2016))
puts(abs_leap?(-1999))



def year_days(year)
  abs_leap?(year) ? "#{year} has 366 days" : "#{year} has 365 days"
end



=begin

# this solution does not work because the implementation of leap? is for gregorian
or julian calendars? for example 300 is considered leap year but it is not
def year_days(year)
  Date.new(year.abs).leap? ? "#{year} has 366 days" : "#{year} has 365 days"
end

=end