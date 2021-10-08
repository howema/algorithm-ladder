# 1. Reverse String

# Write a function that returns the reverse of a given string.

# Input: "abcde"
# Output: "edcba"

=begin
  
create function
call function
add params
return something
index = string.length - 1
create empty array

while loop through, starting at the end
  while loop >=0
  index -=1 
  push each value into new array
=end

def reverse_string(string)
  index = string.length - 1
  new_string = ""
  while index >= 0
    new_string << string[index]
    index -= 1
  end

  return new_string
end

p reverse_string("abcde")

#============================================================================

# 2. Show me the money

# Given a string, write a function that returns true if the "$" character is contained within the string or false if it is not.

# Input: "i hate $ but i love money i know i know im crazy"
# Output: true

# Input: "abcdefghijklmnopqrstuvwxyz"
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

#============================================================================

# 3. Alternate Capitals

# Given a string, write a function that returns a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)

#   Input: "hello, how are your porcupines today?"
#   Output: "hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?"

def upcase(string)
  index = 0
  index2 = 1
  new_string = ""
  while index < string.length
    new_string << string[index]
    index += 2
    new_string << string[index2].to_s.upcase
    index2 += 2
  end
  return new_string
end

p upcase("hello, how are your porcupines today?")

#============================================================================

# 4. First Duplicate Character

# Given a string, write a function that returns the first occurence of two duplicate characters in a row, and return the duplicated character.

# Input: "abcdefghhijkkloooop"
# Output: "h"

def dupe(string)
  output = string[0]
  i = 1
  while i < string.length
    if output == string[i]
      return output
    else
      output = string[i]
      i += 1
    end
  end
end

p dupe("abcdefghijkkloooop")

#============================================================================
