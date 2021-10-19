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
