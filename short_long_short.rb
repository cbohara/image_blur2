#Given 2 strings, a and b, return a string of the form short+long+short, 
#with the shorter string on the outside and the longer string on the inside. 
#The strings will not be the same length, but they may be empty (length0).

def solution(a, b)
  return "#{a}#{b}#{a}" if a.length < b.length
  return "#{b}#{a}#{b}" if a.length > b.length
end

p solution("1", "22") # returns "1221"
p solution("22", "1") # returns "1221"