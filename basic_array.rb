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

def doubled_values(array)
  new_arr = []

  array.each do |num|
    new_arr << num * 2
  end

  new_arr
end

p doubled_values([4, 2, 5, 99, -4])

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

# 5. Reduce: Product

# Write a function that accepts an array of numbers and returns the product of all the numbers.

# Input: [1, 2, 3, 4]
# Output: 24

# Explanation: (1 x 2 x 3 x 4) = 24

def product_numbers(input)
  i = 0
  product = 1
  while i < input.length
    product = product * input[i]
    i += 1
  end
  return product
end

p product_numbers([1, 2, 3, 4])

#============================================================================

# 6. Reverse Array

# Given an array, write a function that returns an array that contains the original array’s values in reverse.

# Input: [1, 2, 3, 4, 5]
# Output: [5, 4, 3, 2, 1]

# While Loop

def reverse_array(array)
  new_arr = []
  i = array.length - 1

  while i >= 0
    new_arr << array[i]
    i -= 1
  end

  new_arr
end

p reverse_array([1, 2, 3, 4, 5])   #=> [5, 4, 3, 2, 1]

## Each Loop

def reverse_array(array)
  new_arr = []

  array.reverse_each do |num|
    new_arr << num
  end

  new_arr
end

p reverse_array([1, 2, 3, 4, 5])

## Built-in Method

def reverse_array(array)
  array.reverse
end

p reverse_array([1, 2, 3, 4, 5])

#============================================================================

#7 Skip It ->

# Given an array of numbers, write a function that returns a new array in which only select numbers from the original array are included, based on the following details:

# The new array should always start with the first number from the original array. The next number that should be included depends on what the first number is. The first number dictates how many spaces to the right the computer should move to pick the next number. For example, if the first number is 2, then the next number that the computer should select would be two spaces to the right. This number gets added to the new array. If this next number happens to be a 4, then the next number after that is the one four spaces to the right. And so on and so forth until the end of the array is reached.

# Input:
# [2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 2, 1, 2]

# Output:
# [2, 3, 1, 2, 2, 1, 5, 2, 2]
