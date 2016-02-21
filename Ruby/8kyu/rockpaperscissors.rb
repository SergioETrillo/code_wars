=begin
Rock Paper Scissors

Let's play! You have to return which player won! In case of a draw 
return Draw!.

Examples:

rps('scissors','paper') // Player 1 won!
rps('scissors','rock') // Player 2 won!
rps('paper','paper') // Draw!

=end

def rps(p1, p2)
  choices ={ "rock" => 1, "paper" => 2, "scissors" => 3 }
  
  result = (choices[p1]-choices[p2]) % 3
  case result
    when 1
        output = "Player 1 won!"
    when 2
        output = "Player 2 won!"
    else
        output = "Draw!"
  end
  output        
end

=begin

def rps(p1, p2)
  return 'Draw!' if p1 == p2
  
  result = win_matrix[p1.to_sym][p2.to_sym]
  
  "Player #{result} won!"
end

def win_matrix
  { 
    rock:     { paper: 2, scissors: 1 },
    paper:    { scissors: 2, rock: 1 },
    scissors: { rock: 2, paper: 1 }
  }
end
Best Practices8Clever5
0ForkCompare with your solutionLink
carpmeister

def rps(p1, p2)
  beatmap = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }

  if p1 == p2
    "Draw!"
  elsif beatmap[p1] == p2
    "Player 1 won!"
  else
    "Player 2 won!"
  end
end
Best Practices6Clever1
0ForkCompare with your solutionLink
beaugaines, Charliebr73

def rps(p1, p2)
  winning_moves = {
    'rock' => 'scissors',
    'scissors' => 'paper',
    'paper' => 'rock'
  }    
  return 'Draw!' if p1 == p2
  winning_moves[p1] == p2 ? 'Player 1 won!' : 'Player 2 won!'
end
1 similar code variation is grouped with this oneShow Variations
Best Practices2Clever0
0ForkCompare with your solutionLink
c0nspiracy

BEATS = { "scissors" => "paper", "paper" => "rock", "rock" => "scissors" }

def rps(p1, p2)
  return "Draw!" if p1 == p2
  "Player #{BEATS[p1] == p2 ? 1 : 2} won!"
end
Best Practices1Clever0
0ForkCompare with your solutionLink
luminaire

def rps(p1, p2)
 if p1 == 'rock' && p2 == 'scissors' || p1 == 'scissors' && p2 == 'paper' || p1 ==
 'paper' && p2 == 'rock' then return "Player 1 won!"
 elsif p1 == p2 then return "Draw!"
 else return "Player 2 won!"
 end
 end
Best Practices1Clever0
0ForkCompare with your solutionLink
zfine416

def rps(p1, p2)
# tie scenarios
  if p1==p2
    return "Draw!"
#     scenarios where player 1 wins
  elsif (p1=="rock" && p2=="scissors") || (p1=="paper" && p2=="rock") || (p1=="scissors" && p2=="paper")
    return "Player 1 won!"
  else
    return "Player 2 won!"
  end
end
Best Practices1Clever1
0ForkCompare with your solutionLink
silarosk

def rps(p1, p2)
  return 'Draw!' if p1 == p2
  results = [['scissors', 'paper'], ['paper', 'rock'], ['rock', 'scissors']]
  return results.include?([p1, p2]) ? 'Player 1 won!' : 'Player 2 won!'
end
Best Practices1Clever1
0ForkCompare with your solutionLink
dendden

def rps(p1, p2)
  return "Draw!" if p1 == p2
  
  combinations = {
    "scissors" => {"paper" => 1, "rock" => 2},
    "paper" => {"rock" => 1, "scissors" => 2},
    "rock" => {"scissors" => 1, "paper" => 2}
  }
  
  "Player #{combinations[p1][p2]} won!"
end
Best Practices1Clever1
0ForkCompare with your solutionLink
Bayoslav

def rps(p1, p2)
  #your code here
if p1 == p2 
  return "Draw!" 
elsif p1 == 'scissors' && p2 == 'rock' || p1 == 'paper' && p2 == 'scissors' || p1 == 'rock' && p2 == 'paper' 

  return "Player 2 won!"
else 
    return "Player 1 won!" 
end 


end
Best Practices0Clever0
0ForkCompare with your solutionLink
UrNotSorry

def rps(p1, p2)
  beats = { 'rock' => 'scissors', 'scissors' => 'paper', 'paper' => 'rock' }
  p1 == p2 ? 'Draw!' : "Player #{beats[p1] == p2 ? 1 : 2} won!"
end
Best Practices0Clever1
0ForkCompare with your solutionLink
wbucko

def rps(p1, p2)
  if (p1 == 'rock' && p2 == 'scissors') or (p1 == 'scissors' && p2 == 'paper') or (p1 == 'paper' && p2 == 'rock')
    p 'Player 1 won!'
  elsif p1 == p2
    p 'Draw!'
  else
    p 'Player 2 won!'
  end
  #your code here
end
Best Practices0Clever0
0ForkCompare with your solutionLink
mariann013

def rps(p1, p2)
  return "Draw!" if p1 == p2
  return "Player 1 won!" if (p1 == 'scissors' && p2 == 'paper') || (p1 == 'rock' && p2 == 'scissors') || (p1 == 'paper' && p2 == 'rock')
  return "Player 2 won!"
end
Best Practices0Clever0
0ForkCompare with your solutionLink
sam11100

def rps(p1, p2)
  
beatmap = {"rock" => "scissors","paper" => "rock","scissors" => "paper"}

if p1 == p2 
  "Draw!"
elsif beatmap[p1]== p2

  "Player 1 won!"
else 
  "Player 2 won!"
end


end
Best Practices0Clever0
0ForkCompare with your solutionLink
doublehelix

def rps(p1, p2)
  if p1=='scissors'
    if p2=='rock'
      'Player 2 won!'
    elsif p2=='paper'
      'Player 1 won!'
    else 
      'Draw!'
     end
  elsif p1=='rock'
    if p2=='scissors'
      'Player 1 won!'
    elsif p2=='paper'
      'Player 2 won!'
    else 
      'Draw!'
     end
  elsif p1=='paper'
    if p2=='rock'
      'Player 1 won!'
    elsif p2=='scissors'
      'Player 2 won!'
    else 
      'Draw!'
     end
  end
end
Best Practices0Clever0
0ForkCompare with your solutionLink
yakschuss


  def rps(p1, p2)
    array = []
    array << p1
    array << p2
    player2 = [["rock", "paper"], 
              ["scissors", "rock"], 
              ["paper" , "scissors"]]  
   
       if p1 == p2 
          return "Draw!"
       elsif player2.include?(array)
          return "Player 2 won!"
       else
          return "Player 1 won!"
       end
    

  end


Best Practices0Clever0
0ForkCompare with your solutionLink
HannaEb

def rps(p1, p2)
  if p1 == p2
  return "Draw!"
  elsif p1 == "rock" && p2 == "scissors"
    return "Player 1 won!"
  elsif p1 == "scissors" && p2 == "paper"
    return "Player 1 won!"
  elsif p1 == "paper" && p2 == "rock"
  return "Player 1 won!"
  else
  return "Player 2 won!"
  end
end
Best Practices0Clever0
0ForkCompare with your solutionLink
adrianw1832

def rps(p1, p2)
  conditions = { scissors: 'paper', paper: 'rock', rock: 'scissors' }
  return 'Draw!' if p1 == p2
  conditions[p1.to_sym] == p2 ? 'Player 1 won!' : 'Player 2 won!'
end
Best Practices0Clever0
0ForkCompare with your solutionLink
sh1anky

def rps(p1, p2)
  return "Draw!" if p1 == p2
  return "Player 1 won!" if [["rock","scissors"], ["scissors", "paper"],["paper", "rock"]].include?([p1,p2]) 
   
  "Player 2 won!"
end
Best Practices0Clever0
0ForkCompare with your solutionLink
hawksdoves

def rps(p1, p2)
  #your code here
    if (p1=="rock" && p2=="scissors") || (p1=="paper" && p2=="rock") || (p1=="scissors" && p2=="paper")
      return "Player 1 won!" 
    elsif (p2=="rock" && p1=="scissors") || (p2=="paper" && p1=="rock") || (p2=="scissors" && p1=="paper")
      return "Player 2 won!" 
    else
      return "Draw!"
    end
end
Best Practices0Clever0
0ForkCompare with your solutionLink
yasgreen93

def rps(p1, p2)
  #your code here
  case
    when p1 == "scissors" && p2 == "rock"
      "Player 2 won!"
    when p1 == "scissors" && p2 == "paper"
      "Player 1 won!"
    when p1 == "rock" && p2 == "scissors"
      "Player 1 won!"
    when p1 == "rock" && p2 == "paper"
      "Player 2 won!"
    when p1 == "paper" && p2 == "scissors"
      "Player 2 won!"
    when p1 == "paper" && p2 == "rock"
      "Player 1 won!"
    else
      "Draw!"
   end
end

=end