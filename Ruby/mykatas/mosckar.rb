=begin
The rules to elect Mosckars winners are:
	
	- The candidates are ordered in a list by alphabetic order of their 
	surnames, i.e. (Eddie Bluemayne,Bryan Cransmock, Matt Deamon,Michael 
	Fussbender, Leotardo TriCaprio)
	
	- The general rule is that the digits of the current year are raised to the 
	cube and sum together, then they start to count from 0 to the calculated 
	number, going back from the last element of the list to the initial one over
	and over as required.  For example, if the calculation of the year is 6, 
	then Bryan Cransmock will win that year´s Mockaward.
	
	- There is a list of exceptions to the rule to ensure a bit of excitement 
	and drama in the ceremony:
	
		○ The actor "Silveltre Istalonne" will never win the award, regardless 
		of the previous rule. If by any tiny chance he is nominated and calculated
		as the winner, automatically  the next actor in the list wins it, (or the
		first one of the list if Silveltre is located last in the list).  This is
		because of a conspiration of the Arnold Twice-enager lobby group and always
		causes great drama and deligth in the audience as Mr. Istalonne can´t feel
		his legs.
		
		○ If the actor "Paco Martinez Soria" is nominated, he always win the Mosckar.
		That causes great elation in the audience as they recognise Paco as world
		best actor ever, and remember his unforgettable performance in "La ciudad
		no es para mí".
		
		○ The Mockians provide a list with nominees which are in the right format,
		i.e. each candidate is a name with at least two words, ini the format 
		"first_name last_name".  Sometimes, particularly with latin actors, they
		have plenty of names but the prisoners always consider the last word as 
		the last name. "Paco Martinez Soria" is an example, Soria would be the 
		last name.  Also popular actor "Betricio del Tolo" surname is "Tolo".
		
		○ Mockians are very absent-minded so in many cases and don´t check how 
		many nominees they provide for an award. In some cases they don´t even 
		provide a single name!  Also when prisoners ask what year is it to make
		the calculations, Mockians provide strange things which do not qualify 
		as year, (i.e. between 0 and 9999 both inclusive).  In all these 
		situations, prisoners grin from ear to ear and instantly provide as 
		winner  "Paco Martinez Soria".  Mockians are flabbergasted and don´t 
		understand how they finish calculations so quickly in some occassions.
		If they knew...
	Your Mission
		
	Your mission, as an activist of Mockin Rights,  is to implement a function 
	winner_is  which takes a list of nominees and the year of the Mockaward, and 
	returns the winner as a string, based on the based rules. Winners should be 
	treated with respect and should be provided in the format "First Name (Any 
	Middle Names If Any) Last Name".  That will put an 
	end to the horrible torture of prison inmates calculating cubes of numbers 
	and counting names over and over again… Their destiny is in your hands.  Good luck.

	
=end

def winner_is(nominees,year)
    # check year:
        # - year integer positive, and <=9999  --> "rescue" Paco
    # check list.length  --> "rescue" Paco
    # calculate winner
    # sort list by "last name" last word of the array --> may / min issue
    #   how to capitalize "Last Name"
    # if Istalonne, i+1
    # if Paco, return Paco
    # return winner
    return "Paco Martinez Soria" unless year.is_a?(Integer) && year>= 0 && year<=9999 && nominees.length==5
    # capitalize their names to ensure sort is consistent, (capital letters sorting before lower letters)
    nominees.map!{|e| e.split(" ").map{|w| w.downcase;w.capitalize}.join(" ")}
    #sort
    nominees.sort_by!{|e| e.split(/ /)[-1]}
    #calculate index winner
    idx_winner = year.to_s.split(//).map{|e| e.to_i**3}.reduce(:+)%5
    return "Paco Martinez Soria" if nominees.include?("Paco Martinez Soria")
    return nominees[(idx_winner+1)%5] if nominees[idx_winner] == "Silveltre Istalonne"
    nominees[idx_winner]
end

nominees1 = ["Eddie Bluemayne","Bryan Cransmock", "Matt Deamon",
                "Michael Fussbender", "Leotardo TriCaprio"]
nominees2= ["Silveltre Istalonne","Eddie Bluemayne","Bryan Cransmock", 
            "Matt Deamon","Leotardo TriCaprio"]
nominees3 =["Mikki Rurk"]
nominees4= ["Silveltre istalonne","eddie blUemayne","Bryan cransMock", 
            "Paco martInez sORia","Leotardo TriCaprio"]
            
nominees5= ["Silveltre istalonne","eddie blUemayne","Bryan cransMock", 
            "Paco martInez sORia","Leotardo TriCaprio"]
                
# ordered ["Eddie Bluemayne", "Bryan Cransmock", "Matt Deamon", "Silveltre Istalonne", "Leotardo Tricaprio"]
# "Leotardo TriCaprio"

puts(winner_is(nominees5,0))                
puts(winner_is(nominees2,1111))
#puts(winner_is(nominees2,0))
#puts(winner_is(nominees4,1111))
#puts(winner_is(nominees1,"to"))
#puts(winner_is(nominees1,-2))
#puts(winner_is(nominees1,1111))

#puts(winner_is(nominees1,22))
#puts(winner_is(nominees1,2015))

#Test.assert_equals winner_is(nominees1,2016), 0


