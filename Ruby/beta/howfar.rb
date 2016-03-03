=begin

You have recently discovered thar horses travel in a unique pattern - they're 
either running (at top speed) or resting (standing still).

Here's an example of how one particular horse might travel:

The horse Blaze can run at 14 metres/second for 60 seconds, but must then rest 
for 45 seconds.

After 500 seconds Blaze will have traveled 4200 metres.
Your job is to write a function that returns how long a horse will have traveled
after a given time.

Input:

totalTime - How long the horse will be traveling
runTime - How long the horse can run for before having to rest
restTime - How long the horse have to rest for after running
speed - The max speed of the horse in metres/second

=end

def travel(total_time, run_time, rest_time, speed)
  iterations = total_time.to_f/(run_time+rest_time)
  remainder_time = total_time - (iterations.to_i)*(run_time+rest_time)
  if remainder_time >= run_time
      distance = speed*run_time*(iterations.to_i+1)
  else
      distance = speed*run_time*iterations.to_i + speed*remainder_time
  end
  distance
end

puts travel(1000, 10, 127, 14)
puts travel(1000, 10, 0, 10)
puts travel(25, 50, 120, 18)

=begin

def travel(total_time, run_time, rest_time, speed)
  completed_runs, remaining_time = total_time.divmod(run_time + rest_time)
  remaining_time = [run_time, remaining_time].min
  speed * (completed_runs * run_time + remaining_time)
end

=end