=begin

A traveling salesman has to visit clients. He got each client's address e.g. "432 Main Long Road St. Louisville OH 43071" 
as a list. The basic zipcode format usually consists of two capital letters followed by a white space and five digits. 
The list of clients to visit was given as a string of all addresses, each separated from the others by a comma, e.g. :
"123 Main Street St. Louisville OH 43071,432 Main Long Road St. Louisville OH 43071,786 High Street Pollocksville NY 56432".
To ease his travel he wants to group the list by zipcode.
Task
The function travel will take two parameters r (list of all clients' addresses) and zipcode and returns a string in the
following format:
zipcode:street and town,street and town,.../nb,nb,...
The street numbers must be in the same order as the streets where they belong.
If a given zipcode doesn't exist in the list of clients' addresses return "zipcode:/"

Examples
r = "123 Main Street St. Louisville OH 43071,432 Main Long Road St. Louisville OH 43071,786 High Street Pollocksville NY 56432"
travel(r, "OH 43071") --> "OH 43071:Main Street St. Louisville,Main Long Road St. Louisville/123,432"
travel(r, "NY 56432") --> "NY 56432:High Street Pollocksville/786"
travel(r, "NY 5643") --> "NY 5643:/"
Note: You can see the list of all addresses and zipcodes in the test cases.
=end
    # way of working
    # split the list into address elements
    # find all the elements that contain the zip and create a subarray with the addresses
    # create another subarray of to take the addresses in order
    # create another subarray of the nbs
    # join the arrays together and return a string


def travel(r, zipcode)
    
    return zipcode+":/" if zipcode !~ /[A-Z]{2}\s\d{5}/
    r_split = r.split(",")

    numbers =[]
    body = []
    zipcode_regex = Regexp.new(zipcode)
    r2 = r_split.grep(zipcode_regex)
    r2.each do |e|
        nbsMatch = e.match(/^\d+/)
        numbers << nbsMatch.to_a  
        body << e.gsub(/\s[A-Z]{2}\s\d{5}/,"").gsub(/^\d+\s/,"") #remove number and zipcode
    end
    zipcode +":" + body.join(",")+"/"+numbers.join(",")
end

r = "123 Main Street St. Louisville OH 43071,432 Main Long Road St. Louisville OH 43071,786 High Street Pollocksville NY 56432"
puts travel(r, "OH 43071")
puts travel(r, "NY 56432")
puts travel(r, "NY 5643")

=begin

def travel(r, zipcode)
  num = []
  arr = []
  locations = r.split(',')
  locations.each do |location|
    if location.match(zipcode)
      arr.push( location.sub(zipcode,"").split(' ')[1..-1].join(' ') )
      num.push(location.split(" ")[0])
    end
  end
  if num.length == 0 || zipcode.length!=8
    return zipcode+":/"
   else
    return zipcode + ":" + arr.join(",") + "/" + num.join(",")
  end
end

=end