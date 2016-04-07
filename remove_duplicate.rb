# Define the unique method that removes duplicates
def unique(integers)
  new=[]
  integers.each {|x| new.push(x) unless new.include?(x) }
  new
end
 
strings = ["hi","hey","hello","hi","hey","heyo"]   # => ["hi", "hey", "hello", "heyo"]
numbers = [1,2,3,4,1,2,3,5,1,2,3,4,5]              # => [1,2,3,4,5]


