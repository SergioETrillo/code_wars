class Guesser
  def initialize(number, lives)
    @number = number
    @lives = lives
  end
  
  def guess(n)
    if @lives == 0
      throw("Omae wa mo shindeiru")
    elsif @number != n
      @lives -= 1
      return false
    else
      return true
    end
  end
end