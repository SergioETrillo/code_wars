=begin

Is the string uppercase?

Task

Create a method, is_upcase?, that can be called on any String to
see whether the string is ALL CAPS. For example:

"c".is_upcase? == false
"C".is_upcase? == true
"hello I AM DONALD".is_upcase? == false
"HELLO I AM DONALD".is_upcase? == true
"ACSKLDFJSgSKLDFJSKLDFJ".is_upcase? == false
"ACSKLDFJSGSKLDFJSKLDFJ".is_upcase? == true

=end

class String
  def is_upcase?
    self.upcase == self  # remove the return not necessary
  end
end