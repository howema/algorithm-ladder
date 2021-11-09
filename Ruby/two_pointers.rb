# 1. Array Mesh 1

# Given two arrays of strings, return a new string that contains every combination of a string from the first array concatenated with a string from the second array.

# Input: ["a", "b", "c"], ["d", "e", "f", "g"]

# Output: ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"]

=begin

i = 0
i2 = 0
new_array = []
loop through entire array
while i < array1.length
  ad 1 + 1
  ad 1 + 2
  af 1 + 3
  ag 1 + 4

    while i2 < array2.length
    array1[i] + array2[i2]
    <<
    i2 +=1

i +=1
=end

def array_mesh_one(array1, array2)
  i = 0
  new_array = []
  while i < array1.length
    i2 = 0
    while i2 < array2.length
      new_array << array1[i] + array2[i2]
      i2 += 1
    end
    i += 1
  end

  p new_array
end

array_mesh_one(["a", "b", "c"], ["d", "e", "f", "g"])

#finally worked once I put i2 = 0 INSIDE the first while loop

#============================================================================

# 2. Array Mesh II

# Given ONE array of strings, return a new array that contains every combination of each string with every other string in the array.

# Input: ["a", "b", "c", "d"]
# Output: ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

=begin
create array, for shoveling

params --> one array


i1 = 0
while loop for i1
  i2 = 0
    while i2 < array.length
      if i1 != i2, 
        then shovel
      end
      i2 +=1
    end
    
    i1 +=1

return new_array

=end

def array_mesh_II(array)
  new_array = []
  i1 = 0
  while i1 < array.length
    i2 = 0
    while i2 < array.length
      if array[i1] != array[i2]
        new_array << array[i1] + array[i2]
      end
      i2 += 1
    end
    i1 += 1
  end
  return new_array
end

p array_mesh_II(["a", "b", "c", "d"])
# ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

#============================================================================

# 6. Coolio Array

# Given an array of numbers, return true if the array is a "100 Coolio Array", or false if it is not.

# A "100 Coolio Array" meets the following criteria:

# Its first and last numbers add up to 100,
# Its second and second-to-last numbers add up to 100,
# Its third and third-to-last numbers add up to 100,
# and so on and so forth.

# Here are examples of 100 Coolio Arrays:

# [1, 2, 3, 97, 98, 99]
# [90, 20, 70, 100, 30, 80, 10]

=begin
two indexes, one loops from beginning, one loops from end

i1 increments, i2 decrements


return true if index 1 + index 2 = 100
=end

def coolio(array)
  i1 = 0
  i2 = array.length - 1

  while i1 <= array.length / 2
    if array[i1] + array[i2] == 100
      return true
    else
      return false
    end
    i1 += 1
    i2 -= 1
  end
end

p coolio([1, 2, 3, 97, 98, 99]) #true
p coolio([90, 20, 70, 100, 30, 80, 10]) #true
p coolio([1, 2, 3, 1, 1, 3]) #false

#note: = is assignment, == is verification

#======================================

def coolio?(array)
  i = 0
  while i <= array.length / 2
    if array[i] + array[-(i + 1)] == 100
      i += 1
      if array[array.length / 2.0] == 100
        return true
      end
    else
      return false
    end
  end
  return true
end

p coolio?([90, 20, 70, 100, 30, 80, 10])

#============================================================================

# 7. Longest Common Prefix

def common_prefix(array)
  output = ""
  i = 0
  while i < array.length
    if array[0][i] == array[1][i] && array[0][i] == array[2][i]
      output += array[0][i]
    end
    i += 1
  end
  return output
end

p common_prefix(["flower", "flow", "flight"])
p common_prefix(["dog", "racecar", "car"])
