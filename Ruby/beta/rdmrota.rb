=begin

You live in a communal house. Each night, one room's residents are required to clean 
the dayroom. Your task is to make a random rota for the entire week.

Write a function that takes a list/array of the current occupied rooms in the house, 
and returns a list of 7 random rooms. If the number of occupied rooms is equal to or 
bigger than 7, duplicates are not allowed. If the number is less than 7, duplicates 
are allowed.

Examples:

rota(["One", "Two", "Three", "Four", "Five", "Six", "Seven"])
Would output

[ 'Three', 'Six', 'Four', 'Five', 'Two', 'One', 'Seven' ]
And rota(["One", "Two", "Three"]) would output

[ 'One', 'Three', 'Two', 'One', 'Two', 'Three', 'One' ]

=end

def rota(rooms)
    # if elements more than 7, shuffle and take the first 7
    # if elements less than 7, we need to fill up to 7, then return it
    result = []
    if rooms.length >= 7
        result = rooms.shuffle[0...7]
    else
        missing = []
        (7-rooms.length).times{missing << rooms[Random.rand(rooms.length)]}
        result = (rooms+missing).shuffle
    end
    result        
end

rooms = ["One", "Two", "Three", "Four", "Five", "Six", "Seven"]
print rota(rooms)
puts ""
puts "*********"
rooms = ["One", "Two", "Three"]
print rota(rooms)


=begin

def rota(rooms)
  rooms.cycle.take(7).shuffle
end

def rota(rooms)
  until rooms.shuffle!.length >= 7
    rooms << rooms.sample
  end
  rooms[0..6]
end

def rota(rooms)
  if (residents = rooms.length) < 7
    (rooms * 7.fdiv(residents).ceil)[0,7].shuffle
  else
    rooms.sample(7)
  end
end


=end