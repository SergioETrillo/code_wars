=begin

Middle Earth is about to go to war. The forces of good will have many battles with the forces of evil. Different races 
will certainly be involved. Each race has a certain 'worth' when battling against others. On the side of good we have the
following races, with their associated worth:

Hobbits - 1
Men - 2
Elves - 3
Dwarves - 3
Eagles - 4
Wizards - 10
On the side of evil we have:

Orcs - 1
Men - 2
Wargs - 2
Goblins - 2
Uruk Hai - 3
Trolls - 5
Wizards - 10
Although weather, location, supplies and valor play a part in any battle, if you add up the worth of the side of good and compare
it with the worth of the side of evil, the side with the larger worth will tend to win.

Thus, given the count of each of the races on the side of good, followed by the count of each of the races on the side of evil,
determine which side wins.

Input:

The function will be given two parameters. Each parameter will be a string separated by a single space. Each string will contain
the count of each race on the side of good and evil.

The first parameter will contain the count of each race on the side of good in the following order:

Hobbits, Men, Elves, Dwarves, Eagles, Wizards.
The second parameter will contain the count of each race on the side of evil in the following order:

Orcs, Men, Wargs, Goblins, Uruk Hai, Trolls, Wizards.
All values are non-negative integers. The resulting sum of the worth for each side will not exceed the limit of a 32-bit integer.

Output:

Return ""Battle Result: Good triumphs over Evil" if good wins, "Battle Result: Evil eradicates all trace of Good" if evil wins,
or "Battle Result: No victor on this battle field" if it ends in a tie.

=end

def goodVsEvil(good, evil)
    
    worth_good = [1,2,3,3,4,10]
    worth_evil = [1,2,2,2,3,5,10]
    good_troops = good.split(" ")
    evil_troops = evil.split(" ")
    good_troops.map!(&:to_i)
    evil_troops.map!(&:to_i)
    power_good = 0
    power_evil = 0
    
    for i in 0..worth_good.length-1
        power_good += worth_good[i]*good_troops[i]
    end
    
    for j in 0..worth_evil.length-1
        power_evil += worth_evil[j]*evil_troops[j]
    end
    
    win_msg = "Battle Result: Good triumphs over Evil"
    loss_msg = "Battle Result: Evil eradicates all trace of Good"
    tie_msg = "Battle Result: No victor on this battle field"
    battle_res = ""
    
    if power_good > power_evil
        battle_res = win_msg
    elsif power_good < power_evil
        battle_res = loss_msg
    else
        battle_res = tie_msg
    end
    
    return battle_res
end
#goodVsEvil('1 0 0 0 0 0', '1 0 0 0 0 0 0')
#goodVsEvil('0 0 0 0 0 10', '0 1 1 1 1 0 0')
goodVsEvil('0 0 0 0 0 10', '0 1 1 1 1 0 0')

=begin

#best practices

def total_worth(counts, worth_table)
  counts.split.each_with_index.reduce(0) { |sum, (c, i)| sum + ( worth_table[i] * c.to_i ) }
end 

def goodVsEvil(good, evil)
  case total_worth(good, [1,2,3,3,4,10]) <=> total_worth(evil, [1, 2, 2, 2, 3, 5, 10])
  when 1 then "Battle Result: Good triumphs over Evil"
  when -1 then "Battle Result: Evil eradicates all trace of Good"
  when 0 then "Battle Result: No victor on this battle field"
  end 
end

=end
