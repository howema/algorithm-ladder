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
