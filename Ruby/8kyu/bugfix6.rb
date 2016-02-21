def eval_object(v)
  case v["operation"]
    when "+" then v["a"]+v["b"]
    when "-" then v["a"]-v["b"]
    when "/" then v["a"]/v["b"]
    when "*" then v["a"]*v["b"]
    when "%" then v["a"]%v["b"]
    when "**" then v["a"]**v["b"]
    else return nil
  end
end

=begin

def eval_object(v)
  a  = v['a']
  b  = v['b']
  op = v['operation']
  case op
    when "+" then a+b
    when "-" then a-b
    when "/" then a/b
    when "*" then a*b
    when "%" then a%b
    when "**" then a**b
    else return nil
  end
end

def eval_object(v)
  v['a'].send v['operation'], v['b']
end

=end

