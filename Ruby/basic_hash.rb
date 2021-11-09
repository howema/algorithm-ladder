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

#======================================

def menu(hash)
  index = 0
  total = 0
  hash.each do |k, v|
    total = total + v
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

#============================================================================

# 5. RNA

# Given a DNA strand, return its RNA complement (per RNA transcription).

# Both DNA and RNA strands are a sequence of nucleotides. Here we're representing the sequences with single-letter characters (e.g. a sample strand may look like: "AGCA".)

# Given a string representing a DNA strand, provide its transcribed RNA strand, according to the following pattern:

# G becomes C
# C becomes G
# T becomes A
# A becomes U

# So based on all this, here's a sample input/output:

# Input: 'ACGTGGTCTTAA'
# Output: 'UGCACCAGAAUU'

=begin
we ARE using a string, can use index
create a hash
  complementary_letters = {"G" => "C", "C" => "G", "T" => "A", "A" => "U"}

  if statement to check which is which

    create index
    create empty string
    while loop for length of string
      for each element, check with hash

iterate index
return empty string

just need to figure out.. if THIS, then THIS
=end

def rna(string)
  complementary_letters = { "G" => "C", "C" => "G", "T" => "A", "A" => "U" }
  index = 0
  rna = ""
  while index < string.length
    rna << complementary_letters[string[index]]
    index += 1
  end
  return rna
end

p rna("ACGTGGTCTTAA")

#======================================

def rna(string)
  complementary_letters = { "G" => "C", "C" => "G", "T" => "A", "A" => "U" }
  rna = ""

  string.each_char do |char|
    rna += complementary_letters[char]
    # rna = rna + complementary_letters[char]
  end

  return rna
end

p rna("ACGTGGTCTTAA")

#============================================================================

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

def names_not_ids(array)
  users = { 403 => "Aunty Em", 231 => "Joelle P.", 989 => "Lyndon Johnson", 111 => "Patti Q." }
  new_array = []

  array.each do |hash|
    hash[:submitted_by] = users[hash[:submitted_by]] #redefines a value in the hash
    new_array << hash #then pushes the new hash into array
  end

  return new_array
end

p names_not_ids([
    { title: "Me Eating Pizza", submitted_by: 231, likes: 1549 },
    { title: "i never knew how cool i was until now", submitted_by: 989, likes: 3 },
    { title: "best selfie evar!!!", submitted_by: 111, likes: 1092 },
    { title: "Mondays are the worst", submitted_by: 403, likes: 644 },
  ])

#======================================

def names_not_ids(array, users)
  new_array = []

  array.each do |hash|
    hash[:submitted_by] = users[hash[:submitted_by]]
    new_array << hash
  end

  return new_array
end

#below I am assigning the two hash inputs to variables, so I can just reference the variable name when calling the function
#In addition, I made room for 2 different parameters

array = [
  { title: "Me Eating Pizza", submitted_by: 231, likes: 1549 },
  { title: "i never knew how cool i was until now", submitted_by: 989, likes: 3 },
  { title: "best selfie evar!!!", submitted_by: 111, likes: 1092 },
  { title: "Mondays are the worst", submitted_by: 403, likes: 644 },
]

hash = { 403 => "Aunty Em", 231 => "Joelle P.", 989 => "Lyndon Johnson", 111 => "Patti Q." }

p names_not_ids(array, hash)

#============================================================================

#============================================================================

# Given a date string in the format Day Month Year, where:
#   Day is in the set(" 1st", "2nd", "3rd", "4th", "5th", "6th", "7th", "8th", "9th",
#   Month is in the set f"Jan", "Feb", "Mar, Apr", "May Jun", "Jul", Aug". "Sep", "Oct", "Nov", "Dec"
#   Year is in the inclusive range [1900, 2100] , "29th", "30th", "31st") ."

# Convert the date string to the format YYYY-MM-DD, where:
#   YWY denotes the 4 digit year.
#   MM denotes the 2 digit month.
#   DD denotes the 2 digit day

#   For example
#   1st Mar 1984 => 1984-03-01
#   2nd Feb 2013 => 2013-02-02
#   4th Apr 1900 => 1900-04-04

# The function must return an array of converted date strings in the order presented
