# Write a method sum that takes an array of numbers and 
# returns the sum of the numbers. 
# These may be integers or decimals for Ruby 
# and any instance of Num for Haskell. 
# The numbers can also be negative. 
# If the array does not contain any numbers then you should return 0.


def sum(numbers)
  numbers.reduce(0) { |sum, num| sum + num }
end

numbers = [1, 5.2, 4, 0, -1]
p sum(numbers)
