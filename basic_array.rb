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

# 2. Less Than 100

# Given an array of numbers, write a function that returns a new array that contains all numbers from the original array that are less than 100.

# Input: [99, 101, 88, 4, 2000, 50]
# Output: [99, 88, 4, 50]

=begin
create function
call function
add params
return something
index = 0
new_array = []
while loop through the array. index < array.length
  if array[index] < 100
    new_array << array[index]
    index +=1
  end
end

return new_array
=end

def less_than_hundred(array)
  index = 0
  new_array = []
  while index < array.length
    if array[index] < 100
      new_array << array[index]
    end
    index += 1
  end

  return new_array
end

p less_than_hundred([99, 101, 88, 4, 2000, 50])
