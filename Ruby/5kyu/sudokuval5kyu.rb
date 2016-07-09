=begin

Write a function done_or_not passing a board (list[list_lines]) as parameter. If the board is valid return 'Finished!', otherwise return 'Try again!'

Sudoku rules:

Complete the Sudoku puzzle so that each and every row, column, and region contains the numbers one through nine only once.

Rows:



There are 9 rows in a traditional Sudoku puzzle. Every row must contain the numbers 1, 2, 3, 4, 5, 6, 7, 8, and 9. There may not be any duplicate numbers in any row. In other words, there can not be any rows that are identical.

In the illustration the numbers 5, 3, 1, and 2 are the "givens". They can not be changed. The remaining numbers in black are the numbers that you fill in to complete the row.

Columns:



There are 9 columns in a traditional Sudoku puzzle. Like the Sudoku rule for rows, every column must also contain the numbers 1, 2, 3, 4, 5, 6, 7, 8, and 9. Again, there may not be any duplicate numbers in any column. Each column will be unique as a result.

In the illustration the numbers 7, 2, and 6 are the "givens". They can not be changed. You fill in the remaining numbers as shown in black to complete the column.

Regions



A region is a 3x3 box like the one shown to the left. There are 9 regions in a traditional Sudoku puzzle.

Like the Sudoku requirements for rows and columns, every region must also contain the numbers 1, 2, 3, 4, 5, 6, 7, 8, and 9. Duplicate numbers are not permitted in any region. Each region will differ from the other regions.

In the illustration the numbers 1, 2, and 8 are the "givens". They can not be changed. Fill in the remaining numbers as shown in black to complete the region.

Valid board example:



For those who don't know the game, here are some information about rules and how to play Sudoku: http://en.wikipedia.org/wiki/Sudoku and http://www.sudokuessentials.com/

=end



def done_or_not(board)

  invalid = "Try again!"
  valid = "Finished!"

  size = 9
  correct_sol = (1..9).to_a

  size.times do |i|
    return invalid if board[i].sort != correct_sol
  end

  size.times do |i|
    return invalid if board.transpose[i].sort != correct_sol
  end

  size_subarray = Math.sqrt(size).to_i
  size_subarray.times do |i|
    aux = board[size_subarray*i...size_subarray*(i+1)]

    size_subarray.times do |j|
      return invalid if aux[0...size_subarray].transpose[size_subarray*j...size_subarray*(j+1)].transpose.flatten.sort != correct_sol
    end
  end
  valid
end

=begin

def done_or_not(board)
  valid9 = ->(row) { row.uniq.inject(:+) == 45 }
  square9 = ->(x, y) { (y..y+2).map { |j| board[j][x,3] }.inject(:+) }
  board.all? { |row| valid9[row] } && board.transpose.all? { |row| valid9[row] } &&
    [0, 3, 6].product([0, 3, 6]).all? { |x, y| valid9[square9[x, y]] } ? "Finished!" : "Try again!"
end

=end