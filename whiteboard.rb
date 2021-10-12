# Given an array of social media posts and a hash of users, return a list of posts (as an array of hashes) that replaces the submitted_by id number as the person's actual name.

# For example, given this array of posts (note that the submitted_by is an id number):

# [
# {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
# {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
# {title: 'Mondays are the worst', submitted_by: 403, likes: 644}
# ]

# And this hash of users (the key is the id number and the value is the user's real name):

# users = {403 => "Aunty Em", 231 => "Joelle P.", 989 => "Lyndon Johnson", 111 => "Patti Q."}

# Return the array of posts as follows:

# [
# {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
# {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
# ]

=begin
basically changes submitted by from ID to name
creates empty updated_array
insert user hash
  array of posts is the INPUT array

each loop

updated_array << users[array[submitted by]]

return updated array

=end

# def names_not_ids(array)
#   users = { 403 => "Aunty Em", 231 => "Joelle P.", 989 => "Lyndon Johnson", 111 => "Patti Q." }
#   new_array = []

#   array.each do |hash|
#     hash[:submitted_by] = users[hash[:submitted_by]] #redefines a value in the hash
#     new_array << hash #then pushes the new hash into array
#   end

#   return new_array
# end

# p names_not_ids([
#     { title: "Me Eating Pizza", submitted_by: 231, likes: 1549 },
#     { title: "i never knew how cool i was until now", submitted_by: 989, likes: 3 },
#     { title: "best selfie evar!!!", submitted_by: 111, likes: 1092 },
#     { title: "Mondays are the worst", submitted_by: 403, likes: 644 },
#   ])

def names_not_ids(array, users)
  new_array = []

  array.each do |hash|
    hash[:submitted_by] = users[hash[:submitted_by]]
    new_array << hash
  end

  return new_array
end

array = [
  { title: "Me Eating Pizza", submitted_by: 231, likes: 1549 },
  { title: "i never knew how cool i was until now", submitted_by: 989, likes: 3 },
  { title: "best selfie evar!!!", submitted_by: 111, likes: 1092 },
  { title: "Mondays are the worst", submitted_by: 403, likes: 644 },
]

hash = { 403 => "Aunty Em", 231 => "Joelle P.", 989 => "Lyndon Johnson", 111 => "Patti Q." }

p names_not_ids(array, hash)
