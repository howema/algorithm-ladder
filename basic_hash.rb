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
