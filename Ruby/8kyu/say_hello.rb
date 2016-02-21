=begin

You received a whatsup message from an unknown number. Could it be from that girl/boy with a foreign accent you met
yesterday evening?

Write a simple regex to check if the string contains the world hallo in different languages.

These are the languages of the possible people you met the night before:

hello - english
ciao - italian
salut - french
hallo - german
hola - spanish
ahoj - czech republic
czesc - polish
By the way, how cool is the czech repubblic hallo!!

PS. you can assume the input is a string. PPS. to keep this a beginner exercise you don't need to check if the 
greeting is a subset of word ('Hallowen' can pass the test)

=end

def validate_hello(greetings)
    
    if (greetings.downcase =~/hello|ciao|salut|hallo|hola|ahoj|czesc/) != nil
        return true
    else
        return false
    end
end

=begin
# fancy solutions...  :)
def validate_hello(greetings)
  /hello|ciao|salut|hallo|hola|ahoj|czesc/i === greetings
end

def validate_hello(greetings)
  languages = ["hello", "ciao", "salut", "hallo", "hola", "ahoj", "czesc"]
  languages.any? { |word| greetings.downcase.include?(word) }
end

def validate_hello(greetings)
  greetings =~ /(hallo)|(ciao)|(salut)|(hello)|(hola)|(ahoj)|(czesc)/i ? true : false
end

def validate_hello(greetings)
  regex_array = [/hello/, /ciao/, /salut/, /hallo/, /hola/, /ahoj/, /czesc/]
  re = Regexp.union(regex_array)
  return re.match(greetings.downcase) != nil
end

def validate_hello(greetings)
  !!(greetings.gsub(/[^A-z]/,'') =~ /hello|ciao|salut|hallo|hola|ahoj|czesc/i)
end

def validate_hello(greetings)
  greetings.downcase.scan(/hello|ciao|salut|hallo|hola|ahoj|czesc/).length > 0
end

def validate_hello(greetings)
  return greetings = true if greetings[/hello/i]
  return greetings = true if greetings[/ciao/i]
  return greetings = true if greetings[/salut/i]
  return greetings = true if greetings[/hallo/i]
  return greetings = true if greetings[/hola/i]
  return greetings = true if greetings[/ahoj/i]
  return greetings = true if greetings[/czesc/i]
  return false
end

def validate_hello(greeting)
  #your code here
  greeting.downcase!
  if greeting.include? "hello"
  return true
  elsif greeting.include? "ciao"
  true
  elsif greeting.include? "salut"
  true
  elsif greeting.include? "hallo"
  true
  elsif greeting.include? "hola"
  true
  elsif greeting.include? "ahoj"
  true
  elsif greeting.include? "czesc"
  true
  else
  false
  end
  end
  
def validate_hello(greetings)
  (greetings =~ /(hello|ciao|salut|hallo|hola|ahoj|czesc)/i) != nil
end


=end