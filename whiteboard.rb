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
