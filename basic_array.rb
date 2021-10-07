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

#============================================================================

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

#============================================================================

# 3. Map: double

# Given an array of numbers, write a function that returns a new array whose values are the original array’s value doubled.

# Input: [4, 2, 5, 99, -4]
# Output: [8, 4, 10, 198, -8]

def double(array)
  output = []
  i = 0
  while i < array.length
    output << array[i] * 2
    i += 1
  end
  return output
end

p double([4, 2, 5, 99, -4])

#============================================================================

#4. Array Max

# Write a function that returns the greatest value from an array of numbers.

# Input: [5, 17, -4, 20, 12]
# Output: 20

# (After you complete the exercise successfully, I recommend watching this video: Think Like a Software Engineer Episode #50)

def max(array)
  max = array[0]
  index = 1
  while index < array.length
    if array[index] > max
      max = array[index]
    end
    index += 1
  end
  return max
end

p max([5, 17, -4, 20, 12])

#============================================================================
