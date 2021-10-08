# 1. Reverse String

# Write a function that returns the reverse of a given string.

# Input: “abcde”
# Output: “edcba”

=begin
  
create function
call function
add params
return something
index = string.length - 1
create empty array

split the string
while loop through, starting at the end
  while loop >=0
  index -=1 
  push each value into new array
=end

#============================================================================

# 2. Show me the money

# Given a string, write a function that returns true if the “$” character is contained within the string or false if it is not.

# Input: “i hate $ but i love money i know i know im crazy”
# Output: true

# Input: “abcdefghijklmnopqrstuvwxyz”
# Output: false

=begin

create a function
call the function
return something
add params

string.split("")
index = 0
state = []
loop through the string length


    if string[index] ==  $
      return true
    els
      return false
    end
    index +=1


=end

def money(string)
  # string = string.split("")
  index = 0
  while index < string.length
    if string[index] == "$"
      return true
      break
    end
    index += 1
  end
  return false
end

p money("abcdefgh$ijklmnopqrstuvwxyz")
p money("abcdefghijklmnopqrstuvwxyz")
p money("i hate $ but i love money i know i know im crazy")
