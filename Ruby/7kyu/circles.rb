=begin

Write a function that takes as its parameters one or more numbers which are the
diameters of circles.

The function should return the total area of all the circles, rounded to the
nearest integer in a string that says "We have this much circle: xyz".

You don't know how many circles you will be given, but you can assume it will
be at least one.

So:

sum_circles(2) == "We have this much circle: 3"
sum_circles(2, 3, 4) == "We have this much circle: 23"
Translations and comments (and upvotes!) welcome!

=end

def sum_circles(*args)
  "We have this much circle: #{args.map{|d| Math::PI*d**2/4}.reduce(:+).round}"
end

=begin

def sum_circles(*args)
  #your code here
  "We have this much circle: #{args.map {|x| (((x.to_f/2)**2)*Math::PI) }.inject(0, :+).round}"
end

=end