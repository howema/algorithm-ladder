# 1. ETL #1

# You are given two parameters, an array and a number. Return a hash whose keys are each of the values from the array parameter, and whose values are the number parameter.

# Input:

# First argument: ["a", "e", "i", "o", "u"]
# Second argument: 1

# Output:

# {
# 'a' => 1,
# 'e' => 1,
# 'i' => 1,
# 'o' => 1,
# 'u' => 1
# }

=begin
create index
create empty hash
while loop
  loop through the array
  after every element in the array, add the number and the element, but as a hash

return new hash
add params
call method

*Cant shovel for a hash! Needs to be assignment.

=end

def make_hash(array, number)
  index = 0
  hash = {}
  while index < array.length
    hash[array[index]] = number
    index += 1
  end
  return hash
end

#===================

p make_hash(["a", "e", "i", "o", "u"], 1)

def make_hash(array, number)
  hash = {}
  array.each do |element|
    hash[element] = number
  end
  return hash
end

p make_hash(["a", "e", "i", "o", "u"], 1)

#===================

def make_hash(array, number)
  hash = {}
  array.each { |element| hash[element] = number }
  return hash
end

#gets rid of "do" puts as block/all on one line

p make_hash(["a", "e", "i", "o", "u"], 1)

#============================================================================

# 2. Flatten Hash

# Given a hash, return a flat array containing all the hash’s keys and values.

# Input: {"a" => 1, "b" => 2, "c" => 3, "d" => 4}
# Output: ["a", 1, "b", 2, "c", 3, "d", 4]

=begin
create empty array
each loop

for every k,v pair in the hash, push the key and then the value to the array

return array

function, params, call function
=end

def flatten_hash(hash)
  array = []
  hash.each do |k, v|
    array << k
    array << v
  end
  return array
end

p flatten_hash({ "a" => 1, "b" => 2, "c" => 3, "d" => 4 })
# Output: ["a", 1, "b", 2, "c", 3, "d", 4]

#============================================================================

# 3. Flip Hash

# Given a hash, create a new hash that has the keys and values switched.

# Input: {"a" => 1, "b" => 2, "c" => 3}
# Output: {1 => "a", 2 => "b", 3 => "c"}

=begin
create new_hash as empty

each loop because INPUT is hash
  have brackets
  maybe use puts to understand values

  for every element in the hash, new_hash = og_hash[value], THEN the key
    use assignment, not shovel
    may need 2 assignments per loop?===> NO
return new hash

function, params are og hash, call funtion
=end

def flip_hash(og_hash)
  new_hash = {}
  og_hash.each do |k, v|
    new_hash[v] = k
  end
  return new_hash
end

p flip_hash({ "a" => 1, "b" => 2, "c" => 3 })
# Output: {1 => "a", 2 => "b", 3 => "c"}

#assigment. just the inverse of new_hash[k] = v

#============================================================================

# 4. ETL 2      /Extract, Transform, Load

# You are given a hash in format #A, and you are to return the same data as a hash using format #B, as specified below:

# Input:

# {
# 1 => ["A", "E", "I", "O", "U"]
# }

# Output:

# {
# 'a' => 1,
# 'e' => 1,
# 'i' => 1,
# 'o' => 1,
# 'u' => 1
# }

# Input:

# {
# 1 => ["A", "E"],
# 2 => ["D", "G"]
# }

# Output:

# {
# 'a' => 1,
# 'd' => 2,
# 'e' => 1,
# 'g' => 2
# }

# Input:

# {
# 1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
# 2 => ["D", "G"],
# 3 => ["B", "C", "M", "P"],
# 4 => ["F", "H", "V", "W", "Y"],
# 5 => ["K"],
# 8 => ["J", "X"],
# 10 => ["Q", "Z"]
# }

# Output:

# {
# 'a' => 1,
# 'b' => 3,
# 'c' => 3,
# 'd' => 2,
# 'e' => 1,
# 'f' => 4,
# 'g' => 2,
# 'h' => 4,
# 'i' => 1,
# 'j' => 8,
# 'k' => 5,
# 'l' => 1,
# 'm' => 3,
# 'n' => 1,
# 'o' => 1,
# 'p' => 3,
# 'q' => 10,
# 'r' => 1,
# 's' => 1,
# 't' => 1,
# 'u' => 1,
# 'v' => 4,
# 'w' => 4,
# 'x' => 8,
# 'y' => 4,
# 'z' => 10
# }

=begin
taking in a hash that's a number as key and array as value, but returning a hash that has each element of the array as a string with the value as the number

flipping
downcase

create empty hash

each loop- only option- |k, v|
  for every v

    each loop for array |element|
      for every element in the hash[value]
        new_hash[k] = array[element].downcase
        new_hash[v] = k

return new hash
function, params, call function
=end

def transform(hash)
  new_hash = {}
  hash.each do |k, v|
    v.each do |element|
      new_hash[element.downcase] = k
    end
  end

  new_hash = Hash[new_hash.sort_by { |k, v| k.to_s }]
  #makes alphabetical

  return new_hash
end

p transform({ 1 => ["A", "E", "I", "O", "U"] })
p transform({
  1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
  2 => ["D", "G"],
  3 => ["B", "C", "M", "P"],
  4 => ["F", "H", "V", "W", "Y"],
  5 => ["K"],
  8 => ["J", "X"],
  10 => ["Q", "Z"],
})

# Output:

# {
# 'a' => 1,
# 'e' => 1,
# 'i' => 1,
# 'o' => 1,
# 'u' => 1
# }
