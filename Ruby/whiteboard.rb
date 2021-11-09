# Find the largest product of any two numbers within a given array.

# Input: [5, -2, 1, -9, -7, 2, 6]
# Output: 63 (-9 * -7)

=begin
  
function, takes array
largest_product = 1

i1 = 0
i2 = 1

while i1 > array.length
keep i1 the same, but multiply it by an iterating i2

it


loop through array
  redefine second index outside of second loop

  compare i1[5] and i2[-2]
  while i1 < array.length
    if i1 * i2 > largest_product
      largest_product = array[i1] * i2

    end
    while i2 < array.length
      if i1 * i2 > largest_product
        largest_product = array[i1] * i2
      end
      i2 += 1
    end
    
    i1 +=1
  return largest_product

returns 1 value
=end

def largest_product(array)
  largest_product = array[0] * array[1]
  i1 = 0
  while i1 < array.length
    i2 = 1
    while i2 < array.length
      if array[i1] * array[i2] > largest_product
        if i1 != i2
          largest_product = array[i1] * array[i2]
        end
      end
      i2 += 1
    end
    i1 += 1
  end

  return largest_product
end

p largest_product([5, -2, 1, -9, -7, 2, 6]) #63
