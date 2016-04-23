=begin

Given an array of numbers, return the difference between the largest and smallest values.

For example:

[23, 3, 41, 21, 16] should return 20 (i.e., 23 - 3).

[1, 434, 555, 34, 112] should return 554 (i.e., 555 - 1).

The array will contain a minimum of two elements.


=end

def between_extremes(numbers)
  temp = numbers.sort
  temp[-1] - temp[0]
end


=begin

def between_extremes(numbers)
  numbers.max - numbers.min
end

=end