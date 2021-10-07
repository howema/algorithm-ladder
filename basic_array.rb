# 1. Reduce: Sum

#Write a function that returns the sum of all numbers in a given array.

# NOTE: Do not use any built-in language functions that do this automatically for you.

# Input: [1, 2, 3, 4]
# Output: 10

# Explanation: (1 + 2 + 3 + 4) = 10

=begin
write a function
call function
add params
loop through array
create index
create sum
index+=1
sum = sum + array[index]
=end

def array_sum(array)
  index = 0
  sum = 0
  while index < array.length
    sum = sum + array[index]
    index += 1
  end
  return sum
end

p array_sum([1, 2, 3, 4])
