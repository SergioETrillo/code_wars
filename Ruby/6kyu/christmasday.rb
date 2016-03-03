=begin

Description:

Sometimes it's useful to know on which day of the week Christmas, the holly 
holiday, will occur.
Write a function which takes the date of Christmas, and outputs the day of the 
week it falls on. Just don't limit yourself to this year. 

Example:

find_out_christmas_weekday('2013 12 25') # returns 'Wednesday'
Only valid Christmas dates will be passed to the function.

Date parameter could be a string or a Date object. If it's a string here are
possible date parameter formats:

'2013 12 25'
'12 25 2013'
'25 December 2013'
Note: calendar used in the kata is Gregorian.

=end

require 'date'

class Date
  def dayname
     DAYNAMES[self.wday]
  end
end

def find_out_christmas_weekday date
    # check wether the input is string or Date
    # if Date, use it already
    # if string, convert it to Date depending on format (yyyy mm dd // mm dd yyyy // dd Month yyyy)
    if date.class == String
        year = date.scan(/\d{4}/)[0].to_i
        month = 12
        day = 25
        d = Date.strptime("{ #{year}, 12, 25 }", "{ %Y, %m, %d }")
        return d.dayname
    end
    date.dayname
end

puts find_out_christmas_weekday('2013 12 25')

=begin

class String
  def to_date
    Date.new(self[/\d{4}/].to_i,12,25)
  end
end


def find_out_christmas_weekday date

  d = date.to_date
  d.strftime("%A")
end

=end

=begin

def find_out_christmas_weekday date
  Date.new(date.to_s.match(/[\d]{4}/)[0].to_i, 12, 25 ).strftime('%A')
end

=end


=begin

def find_out_christmas_weekday date
  return date.strftime('%A') if date.is_a? Date
  
  if date =~ /^\d{2} \d{2} \d{4}$/
    date = Date.strptime(date, '%m %d %Y')
  elsif date =~ /^\d{4} \d{2} \d{2}$/
    date = Date.strptime(date, '%Y %m %d')
  else
    date = Date.strptime(date, '%d %B %Y')
  end
  
  date.strftime('%A')
end

=end