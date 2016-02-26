=begin

Your team is writing a fancy new text editor and you've been tasked with 
implementing the line numbering.

Write a function which takes a list of strings and returns each line prepended 
by the correct number.

Examples

number [] # => []
number ["a", "b", "c"] # => ["1: a", "2: b", "3: c"]

=end

def number lines
   lines.map!.with_index {|line, i| (i+1).to_s + ": " + line } 
end
puts number ["uno", "dos"]
puts number ["uno", "dos","tres","cuatro","cinco"]
puts number [""]
puts number []

=begin

def number lines
  lines.map.with_index(1) { |l, i| "#{i}: #{l}" }
end

def number lines
  line_number = 0
  lines.map! do |x| 
    line_number += 1 
    "#{line_number}: #{x}"
  end
end

=end