# Given a hash, where the keys are strings representing food items, and the values are numbers representing the price of each food, return the amount someone would pay if they'd order one of each food from the entire menu.

# Input: {"hot dog" => 2, "hamburger" => 3, "steak sandwich" => 5, "fries" => 1, "cole slaw" => 1, "soda" => 2}

# Output: 14

# Explanation: If someone would order one of everything on the menu, they'd pay a total of 14 (the sum of all the hash's values).

=begin
index
create sum = 0
while hash. length

  sum = sum + hash index value
iterate index
return sum
=end

# def menu(hash)
#   index = 0
#   sum = 0
#   while index < hash.length
#     sum = sum + hash["key"[index]].to_i
#     index += 1
#   end

#   return sum
# end

# p menu({ "hot dog" => 2, "hamburger" => 3, "steak sandwich" => 5, "fries" => 1, "cole slaw" => 1, "soda" => 2 })
