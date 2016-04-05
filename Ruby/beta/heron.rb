=begin

Description:

Write a function that will calculate area of the triangle based on its side lengts. Lets assume that we have a triangle with side a, b , c, where: a = 4 b = 13 c = 15

Your function: heron(a, b, c) should return its calculated area - in this case 24

Note: All test cases will give you proper triangle sides lengths

More on: https://en.wikipedia.org/wiki/Heron%27s_formula


My other Katas

Algorithms

=end

def heron(a, b, c)
  s = (a + b + c)/2.0
  (s*(s-a)*(s-b)*(s-c)) ** 0.5
end

=begin

def heron(a, b, c)
  s = (a+b+c)/2.0
  Math.sqrt(s*(s-a)*(s-b)*(s-c))
end

=end