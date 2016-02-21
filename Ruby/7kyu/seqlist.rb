=begin
In this kata, you will write an arithmetic list which is basically a list that contains consecutive terms in the sequence. 
You will be given three parameters :

first the first term in the sequence
c the constant that you are going to ADD ( since it is an arithmetic sequence...)
l the number of terms that should be returned
Useful link:
Sequence
Be sure to check out my Arithmetic sequence Kata first ;)
Don't forget about the indexing pitfall ;)

seqlist(0,1,20)
[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19]

=end


def seqlist(first,c,l)
    # input 3 numbers, first, constant to add, and length)
    # output: array
    result = [first]
    for i in 1..l-1
        first += c
        result << first
    end
    result
end
print seqlist(0,1,20)

=begin

def seqlist(first,c,l)
  Array.new(l) { |i| first+c*i }
end

def seqlist(first,c,l)
  (0...l).map { |i| first + i * c }
end

def seqlist(first,c,l)
  first.step(by: c).take(l).to_a
end

def seqlist(first,c,l)
  l.times.map do |n| first + n * c end
end
=end