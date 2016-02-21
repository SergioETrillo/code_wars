=begin

Description:

Given a "square" array of subarrays, find the sum of values from the first value of the first array, 
the second value of the second array, the third value of the third array, and so on...

Example 1:

exampleArray = [[1, 0, 0, 0],
                [0, 1, 0, 0],
                [0, 0, 1, 0],
                [0, 0, 0, 1]]

diagonalSum(exampleArray) # => 4
Example 2:

exampleArray = [[1, 0, 0, 0, 0],
                [0, 1, 0, 0, 0],
                [0, 0, 1, 0, 0],
                [0, 0, 0, 1, 0],
                [0, 0, 0, 0, 1]]

diagonalSum(exampleArray) # => 5

=end

def diagonalSum(matrix)
    #entry is an array of arrays
    #exit is a number, (sum of diagonals)
    res = 0
    i=0
    matrix.each do |e|
        res += e[i]
        i += 1
    end
    res
end

=begin

def diagonalSum(matrix)
    #entry is an array of arrays
    #exit is a number, (sum of diagonals)
    res = 0
    for i in 0..matrix.length-1
        res += matrix[i][i]
    end
    res
end

=begin
# fancy solutions
def diagonalSum(matrix)
  matrix.map.with_index { |a, i| a[i] }.reduce(:+)
end

require 'matrix'
def diagonalSum(matrix)
  Matrix[*matrix].trace
end



=end

=end