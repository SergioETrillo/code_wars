=begin
Description:

The Western Suburbs Croquet Club has two categories of membership, Senior and Open. They would like your help with an application
form that will tell prospective members which category they will be placed.

To be a senior, a member must be at least 55 years old and have a handicap greater than 7. In this croquet club, handicaps range 
from -2 to +26; the better the player the lower the handicap.

Input

Input will consist of a list of lists containing two items each. Each list contains information for a single potential member. 
Information consists of an integer for the person's age and an integer for the person's handicap.

Example Input

[[18, 20],[45, 2],[61, 12],[37, 6],[21, 21],[78, 9]]
Output

Output will consist of a list of string values (in Haskell: Open or Senior) stating whether the respective member is to be placed 
in the senior or open category.

Example Output

["Open", "Open", "Senior", "Open", "Open", "Senior"]
=end

def openOrSenior(data)
  #extract the pair [age,handicap]
  #check the rules, (if age >= 55 && handicap > 7 ) "Senior" else "Open" = resn
  # we'll get a pair [res0,res1,res2] to return

  res = []
  data.each do |e|
     if e[0] >= 55 && e[1] > 7
         res << "Senior"
     else
         res << "Open"
     end
  end
  res
end
=begin 
  end
    if data[i][0] >= 55 && data[i][1] > 7
      res << "Senior"
    else
      res << "Open"
    end
  end
  res
end

=end
print ("#{openOrSenior([[45, 12],[55,21],[19, -2],[104, 20]])}\n")
print ("#{openOrSenior([[3, 12],[55,1],[91, -2],[54, 23]])}\n")

=begin
# my solution using for loop
def openOrSenior(data)
  #extract the pair [age,handicap]
  #check the rules, (if age >= 55 && handicap > 7 ) "Senior" else "Open" = resn
  # we'll get a pair [res0,res1,res2] to return

  res = []
  for i in 0..data.length-1
    if data[i][0] >= 55 && data[i][1] > 7
      res << "Senior"
    else
      res << "Open"
    end
  end
  res
end

=end

=begin
#fancy solutions

def openOrSenior(data)
  data.map { |i| Member.new(i).category }
end

class Member
  def initialize(data)
    @age = data.first
    @handicap = data.last
  end
  
  def category
    if @age >= 55 && @handicap > 7
      'Senior'
    else
      'Open'
    end
  end
 end

=end

=begin

def openOrSenior(data)
  data.map { |member| member[0] > 54 && member[1] > 7 ? 'Senior' : 'Open' }
end

=end
