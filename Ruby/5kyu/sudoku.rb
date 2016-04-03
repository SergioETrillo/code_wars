=begin

Description:

Given a Sudoku data structure with size NxN, N > 0 and √N == integer, write a method to validate if it has been filled out correctly.

The data structure is a multi-dimensional Array, ie:

[
  [7,8,4,  1,5,9,  3,2,6],
  [5,3,9,  6,7,2,  8,4,1],
  [6,1,2,  4,3,8,  7,5,9],

  [9,2,8,  7,1,5,  4,6,3],
  [3,5,7,  8,4,6,  1,9,2],
  [4,6,1,  9,2,3,  5,8,7],

  [8,7,6,  3,9,4,  2,1,5],
  [2,4,3,  5,6,1,  9,7,8],
  [1,9,5,  2,8,7,  6,3,4]
]
Rules for validation

Data structure dimension: NxN where N > 0 and √N == integer
Rows may only contain integers: 1..N (N included)
Columns may only contain integers: 1..N (N included)
'Little squares' (3x3 in example above) may also only contain integers: 1..N (N included)

=end


class Sudoku < Array
    
    def is_valid
      size = self.size
      return false unless Math.sqrt(size) % 1 == 0
      correct_sol = (1..size).to_a
    
      size.times do |i|
        return false if self[i].sort != correct_sol
      end
     
      size.times do |i|
        return false if self.transpose[i].sort != correct_sol
      end
      
      size_subarray = Math.sqrt(size).to_i
      size_subarray.times do |i|
        aux = self[size_subarray*i...size_subarray*(i+1)]

        size_subarray.times do |j|
             return false if aux[0...size_subarray].transpose[size_subarray*j...size_subarray*(j+1)].transpose.flatten.sort != correct_sol
          end
      end
      true
    end
end    
    
    

s = Sudoku.new([
  [7,8,4,  1,5,9,  3,2,6],
  [5,3,9,  6,7,2,  8,4,1],
  [6,1,2,  4,3,8,  7,5,9],

  [9,2,8,  7,1,5,  4,6,3],
  [3,5,7,  8,4,6,  1,9,2],
  [4,6,1,  9,2,3,  5,8,7],

  [8,7,6,  3,9,4,  2,1,5],
  [2,4,3,  5,6,1,  9,7,8],
  [1,9,5,  2,8,7,  6,3,4]
])

p s.is_valid


=begin


class Sudoku
  def initialize(arr)
    @arr = arr
    @len = arr.count
    @n = Math.sqrt(@len).to_i
  end
  
  def box(x)
    col = (x % @n) * @n
    row = (x / @n).to_i * @n
    @n.times.map {|r| @n.times.map {|c| [row+r,col+c] } }.flatten(1)
  end
  
  def is_valid
    return false if @arr.flatten.select {|x| (! x.is_a? Fixnum) || x < 1 || x > @len}.count > 0
    return false if (@n*@n != @len) or (@arr.map {@arr.count}.uniq.count != 1)
    
    return (
      @arr.select {|row| row.uniq.count != @len }.empty? and
      @len.times.select {|i| @arr.map {|row| row[i] }.uniq.count != @len}.empty? and
      @n.times.select {|i| box(i).map {|x,y| @arr[x][y]}.uniq.count != @len}.empty?
    )
  end
end

=end