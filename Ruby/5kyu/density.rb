=begin

Description: ------

Don't Drink the Water

Given a two-dimensional array representation of a glass of mixed liquids, sort the array such that the liquids appear in the glass based on their density. (Lower density floats to the top) The width of the glass will not change from top to bottom.

======================
|   Density Chart    |
======================
| Honey   | H | 1.36 |
| Water   | W | 1.00 |
| Alcohol | A | 0.87 |
| Oil     | O | 0.80 |
----------------------

[                            [
 ['H', 'H', 'W', 'O'],        ['O','O','O','O']
 ['W', 'W', 'O', 'W'],  =>    ['W','W','W','W']
 ['H', 'H', 'O', 'O']         ['H','H','H','H']
 ]                           ]
The glass representation may be larger or smaller. If a liquid doesn't fill a row, it floats to the top and to the left.


=end

def separate_liquids(glass)
  res = []
  liquids = { H: 1.36, W: 1.0, A: 0.87, O: 0.8 }
  aux = glass.flatten
  aux.map{ |i| liquids[i.to_sym] }.
  sort.map{ |i| liquids.invert[i].to_s }.
  each_slice(glass.first.length) do |elem|
      res << elem
  end
  res
end

=begin

DENSITY = {
  "H" => 1.36,
  "W" => 1.00,
  "A" => 0.87,
  "O" => 0.80
}

def separate_liquids(glass)
  return glass if glass.empty?
  glass_width = glass.first.length
  glass.flatten.sort_by { |a| DENSITY[a] }.each_slice(glass_width).to_a
end

=end