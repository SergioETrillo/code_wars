=begin

Implement String#digit?, which should return true if given object is a 
digit (0-9), false otherwise.

=end

class String
  def digit?
    return false if self.length != 1
    /^\d$/ === self  # USE \A FOR BEG OF STRING AND \z FOR END OF STRING
  end
end

=begin

class String
  def digit?
    /\A\d\z/ === self
  end
end

class String
  def digit?
    !!(self =~ /\A\d\z/)
  end
end


=end