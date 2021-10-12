# 1. Given a string, find the most commonly occurring letter.

# Input: “peter piper picked a peck of pickled peppers”
# Output: “p”

=begin
create function, params, call, return
create empty hash
create index
loop through string length

create the counting hash
check hash for highest letter
=end

def most_common_letter(string)
  index = 0
  letter_count = {}
  highest_count = 0
  most_frequent_letter = ""

  while index < string.length
    if letter_count[string[index]]
      letter_count[string[index]] += 1
    else
      letter_count[string[index]] = 1
    end

    if letter_count[string[index]] > highest_count
      highest_count = letter_count[string[index]]
      most_frequent_letter = string[index]
    end

    index += 1
  end

  # p letter_count
  return most_frequent_letter
end

p most_common_letter("peter piper picked a peck of pickled peppers")

#============================================================================

# 2. Count Votes

# Given an array of strings, return a hash that provides a count of how many times each string occurs.

# Input: ["Dewey", "Truman", "Dewey", "Dewey", "Truman", "Truman", "Dewey", "Truman", "Truman", "Dewey", "Dewey"]

# Output: {"Dewey" => 6, "Truman" => 5}

# Explanation: "Dewey" occurs 6 times in the array, while "Truman" occurs 5 times.

=begin
create empty hash
create index
loop through length
string_count = {}

while index < array.length
  if string_count[array[index]]
    string_count[array[index]] += 1
  else
    string_count[array[index]] = 1
  end

  index +=1
iterate index
p the hash
=end

def count_votes(array)
  index = 0
  string_count = {}

  while index < array.length
    if string_count[array[index]]
      string_count[array[index]] += 1
    else
      string_count[array[index]] = 1
    end

    index += 1
  end

  p string_count
end

count_votes(["Dewey", "Truman", "Dewey", "Dewey", "Truman", "Truman", "Dewey", "Truman", "Truman", "Dewey", "Dewey"])

#============================================================================

# 3. Order the Whole Menu

# Given a hash, where the keys are strings representing food items, and the values are numbers representing the price of each food, return the amount someone would pay if they'd order one of each food from the entire menu.

# Input: {"hot dog" => 2, "hamburger" => 3, "steak sandwich" => 5, "fries" => 1, "cole slaw" => 1, "soda" => 2}

# Output: 14

# Explanation: If someone would order one of everything on the menu, they'd pay a total of 14 (the sum of all the hash's values).

=begin
  create index
  create sum
  total = 0

  hash

  loop through length
  return 
  call function
=end

def menu(hash)
  index = 0
  total = 0
  hash.each do |k, v|
    total = total + "#{v}".to_i
  end
  return total
end

p menu({ "hot dog" => 2, "hamburger" => 3, "steak sandwich" => 5, "fries" => 1, "cole slaw" => 1, "soda" => 2 })

#============================================================================

# 4. Popular Posts

# Given an array of hashes that represent a list of social media posts, return a new array that only contains the posts that have at least 1000 likes.

# Input: [
# {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
# {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
# ]

# Output: [
# {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
# {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# ]

=begin
loop through and check

empty hash

input. each do |k, v|
  input["likes"]
  if input["likes"] >= 1000
    it = the new hash
  end
 
end

loop checks >=1000
=end

def likes(array)
  new_array = []
  array.each do |hash|
    if hash[:likes] >= 1000
      new_array << hash
    end
  end
  return new_array
end

p likes([
    { title: "Me Eating Pizza", submitted_by: "Joelle P.", likes: 1549 },
    { title: "i never knew how cool i was until now", submitted_by: "Lyndon Johnson", likes: 3 },
    { title: "best selfie evar!!!", submitted_by: "Patti Q.", likes: 1092 },
    { title: "Mondays are the worst", submitted_by: "Aunty Em", likes: 644 },
  ])
