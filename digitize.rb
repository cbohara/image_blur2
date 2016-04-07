# Given a non-negative integer, return an array / a list of the individual digits 
# in order.

# sentence.split.reverse.join(" ")

# Examples:
# 123 => [1,2,3]

# 1 => [1]

# 8675309 => [8,6,7,5,3,0,9]

def digitize(n)
  string_num = n.to_s.split('')
  answer = []
  string_num.each do |num|
    answer << num.to_i
  end
  return answer
end

p digitize(8675309)