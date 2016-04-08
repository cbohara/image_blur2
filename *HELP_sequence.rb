# A sequence is usually a set or an array of numbers that has a strict way for moving from the nth term to the (n+1)th term.

# If f(n) = f(n-1) + c where c is a constant value, 
#then f is an arithmetic sequence.

# You're going to write a function that's going to return the value in the nth index of an arithmetic sequence.(That is, adding a constant to move to the next element in the "set").

# The function's name is nthterm, it takes three inputs first,n,c where:

# first is the first value in the 0 INDEX.
# n is the index of the value we want.
# c is the constant added between the terms.
# Remember that first is in the index 0 .. just saying ...

# nthterm is the function
def nthterm(first, n, c)
  array = []  # [ ]
  array[0] = first # [1]
  1.upto(10) do |i|      # i = 1
    array << array[i - 1] + c 
  end
  return array
end

p nthterm(1,2,3)
#p nthterm(1, 2, 3)
# [1, 4, 7, 10] n= 3 => 7
# 1 + 3 = 4
# 



# Test.assert_equals(nthterm(1, 2, 3), 7)
# Test.assert_equals(nthterm(2, 2, 2), 6)
# Test.assert_equals(nthterm(-50, 10, 20), 150)