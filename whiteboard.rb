# Given two strings of equal length, write a function that returns the number of characters that are different between the two strings.

# Input: "ABCDEFG", "ABCXEOG"
# Output: 2

# Explanation: While the A, B, C, E, and G are in the same place for both strings, they have different characters in the other spaces. Since there are 2 such spaces that are different (the D and F in the first string), we return 2.

# Input: "ABCDEFG", "ABCDEFG",
# Output: 0

=begin
given 2 strings, returning a number (of the differences)

function, params, call function, return the number

create count variable
create index
loop
  if string1[index] == string2[index]
    count +=1
  end
  iterate through index

=end

def hamming(string1, string2)
  count = 0
  index = 0

  while index < string1.length
    if string1[index] != string2[index]
      count += 1
    end
    index += 1
  end
  return count
end

p hamming("ABCDEFG", "ABCXEOG") #2
p hamming("ABCDEFG", "ABCDEFG") #0
