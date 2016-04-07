# close bulky answer
  # def solution(sentence)
  #   array = sentence.split(' ')
  #   reverse = ''
  #   array.reverse_each { |word| reverse += "#{word} "}
  #   p reverse
  # end

# slim solution
def solution(sentence)
  sentence.split.reverse.join(" ")
end

p solution("The greatest victory is that which requires no battle") 
# should return "battle no requires which that is victory greatest The"