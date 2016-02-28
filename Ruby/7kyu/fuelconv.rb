=begin

Background

While mpg (miles per gallon) is a common unit of measurement for fuel economy 
in North America, for Europe the standard unit of measurement is generally 
liter per 100 km. Conversion between these units is somewhat hard to calculate 
in your head, so your task here is to implement a simple convertor in both directions.

Functions

mpg2lp100km() converts from miles per gallon to liter per 100 km.
lp100km2mpg() converts in the opposite direction.
Output

The output of both functions should be a number rounded to 2 decimal places.

Examples

mpg2lp100km(42) returns 5.6
lp100km2mpg( 9) returns 26.13
Reference

For this kata, use U.S. gallon, not imperial gallon.

1 gallon = 3.785411784 liters
1 mile = 1.609344 kilometers


=end
MILES = 1.609344
GALLONS = 3.785411784

def mpg2lp100km(mpg)
  #your code here
  ((100*GALLONS)/(MILES*mpg)).round(2)
  
end

def lp100km2mpg(lp100km)
  #your code here
  ((100*GALLONS)/(MILES*lp100km)).round(2)
end

puts(mpg2lp100km(42))
 
 
 