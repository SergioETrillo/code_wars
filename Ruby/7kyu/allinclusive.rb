=begin

Description:

Input:

a string strng
an array of strings arr

Output of function contain_all_rots(strng, arr) (or containAllRots or contain-all-rots):

a boolean true if all rotations of strng are included in arr
false otherwise
Examples:

contain_all_rots(
  "bsjq", ["bsjq", "qbsj", "sjqb", "twZNsslC", "jqbs"]) -> true

contain_all_rots(
  "Ajylvpy", ["Ajylvpy", "ylvpyAj", "jylvpyA", "lvpyAjy", "pyAjylv", "vpyAjyl", "ipywee"]) -> false)
Note:

Though not correct in a mathematical sense

we will consider that there are no rotations of strng == ""
and for any array arr: contain_all_rots("", arr) --> true


=end

def contain_all_rots(strng, arr)
    return true if strng == ""

    rotations = [strng]
    ary_str = strng.chars
    size = ary_str.size
    
    (size-1).times do
        rotations << ary_str.rotate!.join
    end
    rotations.uniq!
    rotations & arr == rotations
end





=begin

def contain_all_rots(str, arr)
  str.length.times.map { |i| str.chars.rotate(i) }
    .map(&:join)
    .all? { |a| arr.include?(a) }
end

=end