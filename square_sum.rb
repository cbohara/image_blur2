# Complete the squareSum method so that it squares each number passed into it 
# and then sums the results together.

def squareSum(numbers)
  sum = 0
  numbers.each do |num|
    sum = sum + (num * num)
  end
  return sum
end

p squareSum([1, 2, 2]) # should return 9