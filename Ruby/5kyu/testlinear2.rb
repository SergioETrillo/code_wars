def dbl_linear(n)
  seq = [1]
  i = 0
  
  while seq.last <= n**2
    seq << (2*seq[i]+1) << (3*seq[i]+1)
    i += 1 
  end
  seq.sort.uniq
end


p dbl_linear(20)