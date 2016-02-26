=begin

Strive is designed to deliver jobs to software developers on a continual basis. 
As more quality jobs are handpicked into the system, they will be matched to all the enrolled 
developers; affording them better opportunities daily.

This means that somewhere in the system there exists functionality to take a job and match it 
against enrolled candidates. There are several factors that go into this matching, but we'll focus on
two for the purposes of this Kata.

Create a function match which takes a job, and filters a list of candidates to the ones that match 
the job. We'll focus on two matching properties for this Kata: equity and location.

Equity

The candidate has a equity property (boolean) indicating if they desire equity, while the job will 
have a maximum equity property (float) representing the max amount of equity offered. If the maximum
equity is zero, we can infer there is no equity offered. A job will match unless the candidate
desires equity, but the job does not offer any.

Location

The candidate will have two location properties: current location and desired locations. A job can
be located in multiple places as well which will be represented by its locations property. A match
is when a job location is either in the candidate's current location or any of the candidate's 
desired locations.

So the candidate list might look like this:

let candidates = [{
  desiresEquity: true, 
  currentLocation: 'New York',
  desiredLocations: ['San Francisco', 'Los Angeles', 'Colorado']
}, ...];
And a job might look like this:

let job = { 
  equityMax: 1.2, 
  locations: ['New York', 'Kentucky'] 
}

BASIC TESTS

Test.describe("Basic tests") do
candidates = [{
  'desires_equity'=>true, 
  'current_location'=>'New York',
  'desired_locations'=>['San Francisco', 'Los Angeles']
}, {
  'desires_equity'=>false, 
  'current_location'=>'San Francisco',
  'desired_locations'=>['Kentucky', 'New Mexico'] 
}]
job1 = { 'equity_max'=>0, 'locations'=>['Los Angeles', 'New York'] }
job2 = { 'equity_max'=>1.2, 'locations'=>['New York', 'Kentucky'] }
Test.assert_equals(match(job1, candidates).length, 0) 
Test.assert_equals(match(job2, candidates).length, 2)
end

=end

def match(job, candidates)
  #.include? for the locations search
  matched_candidates = candidates
  if job["equity_max"] == 0
      matched_candidates = candidates.select {|c| c["desires_equity"]== false}
  end
  result = []
  matched_candidates.each do |c|
      temp_cand_locations = c["desired_locations"] << c["current_location"]
      is_match = temp_cand_locations & job['locations']
      if is_match != []
          result << c
      end
  end
  result
end

candidates = [{
  'desires_equity'=>true, 
  'current_location'=>'New York',
  'desired_locations'=>['San Francisco', 'Los Angeles']
}, {
  'desires_equity'=>false, 
  'current_location'=>'San Francisco',
  'desired_locations'=>['Kentucky', 'New Mexico'] 
}]
job1 = { 'equity_max'=>0, 'locations'=>['Los Angeles', 'New York'] }
job2 = { 'equity_max'=>1.2, 'locations'=>['New York', 'Kentucky'] }

puts(match(job1,candidates))
puts "********"
puts(match(job2,candidates))

=begin

def match(job, candidates)
  candidates.select do |c|
    (c['desires_equity'] == false || job['equity_max'] > 0) &&
    ((job['locations'] & (c['desired_locations'] << c['current_location'])).size > 0)
  end
end



=end
