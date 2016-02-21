=begin

Write a function that returns the total surface area and volume of a box as an array: [area, volume].

=end

def get_size(w,h,d)
  #your code here
  return [2*(w*h+w*d+d*h),w*h*d]
end