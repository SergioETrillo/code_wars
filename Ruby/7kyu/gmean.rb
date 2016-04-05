=begin

Description:

For a variable, x, that may have different values, the geometric mean is defined as:

source: imgur.com

Suposse that you have to calculate the geometric mean for a research where the
amount of values of x is rather small.

Implement the function geometric_meanI(), (geometricMeanI javascript)that
receives an array with the different values of the variable and outputs the 
geometric mean value.

The negative values and strings will be discarded for the calculations.

Nevertheless if the amount of total invalid values is too high, the function
will return 0. The tolerance for invalid values of the variable will be as follows:

amount of entries      maximum invalid entries
  2 - 10                       1
  From 11 and above      10 % of total of entries
You do not have to round the results.

(When you finish this kata, Geometric Mean II will be waiting you)
FundamentalsData StructuresAlgorithmsControl FlowBasic Language 
FeaturesMathematicsNumbersDeclarative Programming

=end

def geometric_meanI(arr)
    nb_invalid_entries = 0
  arr.each do |e|
      nb_invalid_entries += 1 if ( e.is_a?(String) || e < 0 )
  end
  p "inv entries: #{nb_invalid_entries}"
  p "10% arr.size: #{(arr.size*0.1)}"
  
  return result = 0 if (nb_invalid_entries > 1 && arr.size < 10) || 
                    (nb_invalid_entries >= 0.1*arr.size && arr.size >= 11)
                
  arr.select! {|e| e.is_a?(Numeric) && e >= 0 }
  result =  arr.reduce(1, :*) ** (1.0/arr.size) 
end

arr = [48, 46, 0, 13, 3, 4, 39, 18, 40, 10, 45, 5, 15, 35, 43, 33, 35, 46, 23, 30, 1, 4, 7, 37, 32, 30, 40, 23, 20, 3, 44, 8, 24, -2, 35, 18, 16, 28, 48, 1]
p geometric_meanI arr
arr = [35, 41, 43, 50, 40, 49, 14, 30, 44, 1, 14, 44, -3, 7, 27, 18, 42, 1, 37, 11, 25, 48, 16, 35, 40, 9, 40, 30, 26, -3, 23, 46, 29, 23, 1, 25, 31, 43, 28, 5, 36, 50, 20, 17, 35, 45, 14, 38, 12, 1, -4, 28, 9, 39, 45, 35, 45, 47, 34, 2, 50, 14, 12, 11, -3, 29, 3, 11, 24, 39, 35,
42, 10, -4, 47, 39, 32, -1, 25, 18, 35, 32, 10, 18, 23, 35, 45, 45, 37, 37, 0, 32, 21, 9, 2, 32, 4, 40, 44, 37]
p geometric_meanI arr

=begin

def geometric_meanI(arr)
  arr_length = arr.length
  arr.delete_if {|x| x.class == String || x < 0}
  inv = arr_length - arr.length
  valid = true
  valid = false if (inv >= arr_length/10) && inv > 1  
  valid ? arr.reduce(:*)**(1.0/arr.length) : 0
end

=end