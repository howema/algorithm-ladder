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
