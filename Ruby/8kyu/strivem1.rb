=begin

Strive is a new developer-centric service that is focused on presenting software developers with jobs that excite us. 
Strive discovers these jobs for developers based on a number of factors.

One of the simplest, yet most important factors is compensation. As developers we know how much money we need to support 
our lifestyle, so we generally have a rough idea of the minimum salary we would be satisfied with.

Let's give this a try. We'll create a function match which takes a candidate and a job, which will either return a boolean 
indicating whether the job is a valid match for the candidate.

A candidate will have a minimum salary, so it will look like this:

let candidate = {
  minSalary: 120000
}
A job will have a maximum salary, so it will look like this:

let job = {
  maxSalary: 140000
}
If either the candidate's minimum salary or the job's maximum salary is not present, throw an error.

For a valid match, the candidate's minimum salary must be below the job's maximum salary. However, let's also include 10% wiggle
room (deducted from the candidate's minimum salary) in case the candidate is a rockstar who enjoys programming on Codewars in 
their spare time. The company offering the job may be able to work something out.

Of course, compensation is only one filter that will help lead to our satisfaction. What other factors can Strive use to 
discover jobs that will excite developers?

Continue on with Kata:

Strive Matching #2
Strive Matching #3
Or join this Kata's discussion to let us know what you think!

=end

def match(candidate, job)
  throw("error") if candidate == nil or job == nil
  (job["max_salary"] + 0.1*candidate["min_salary"]) >= candidate["min_salary"]
end


=begin
def match(candidate, job)
  candidate['min_salary']*0.9<=job['max_salary']
end

=end