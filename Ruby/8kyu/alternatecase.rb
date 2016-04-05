=begin


altERnaTIng cAsE <=> ALTerNAtiNG CaSe

Define String.prototype.toAlternatingCase (StringUtils.toAlternatingCase(String)
in Java) such that each lowercase letter becomes uppercase and each uppercase 
letter becomes lowercase. For example:

Note to no Java langs

You must NOT alter the original string.

=end

class String
  def to_alternating_case
    text = ""
    self.each_char do |c| 
        if /[a-z]/ =~ c
            text << c.upcase
        elsif /[A-Z]/ =~ c
            text << c.downcase
        else
            text << c
        end
    end 
    text
  end
end

=begin
# there is a built-in method that does exactly that

class String
  def to_alternating_case
    self.swapcase
  end
end
=end

=begin
# no need to use self even!

class String
  def to_alternating_case
    swapcase
  end
end

=end