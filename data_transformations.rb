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
