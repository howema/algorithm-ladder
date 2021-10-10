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

=begin
  create function
  call function
  return something
  add params

  index1 = 0
  index2 = 1
  loop
    while index1 < string.length

      (if double_letter) 
      if index1 == index2
        p string[index1]
        break
      else
        index1 +=1
        index2 +=1
      end
    end
    return?
  end
=end

def duplicate(string)
  index1 = 0
  index2 = 1

  while index1 < string.length
    if string[index1] == string[index2]
      p string[index1]
      break   #need this or else infinite
    else
      index1 += 1
      index2 += 1
    end
  end
end

duplicate("abcdefghhijkkloooop")

def dupe(string)
  i = 1
  output = string[0]
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

# 5. Palindrome

# Given a string, write a function that returns true if it is a palindrome, and false if it is not. (A palindrome is a word that reads the same both forward and backward.)

# Input: “racecar”
# Output: true

# Input: “baloney”
# Output: false

=begin
create method to reverse the string

create empty string
index starts at end
index iterates backwards
shovel loop into new string

if string = string.reverse
  return true
else
  return false
end
=end

def palindrome(string)
  i = string.length - 1
  new_string = ""
  while i >= 0
    new_string << string[i]
    i -= 1
  end

  if new_string == string
    return true
  else
    return false
  end
end

p palindrome("racecar");  #true
p palindrome("baloney");  #false
p palindrome("megan");  #false
p palindrome("hannah") #true

#============================================================================

# 6. Hamming ->

# Given two strings of equal length, write a function that returns the number of characters that are different between the two strings.

# Input: "ABCDEFG", "ABCXEOG"
# Output: 2

# Explanation: While the A, B, C, E, and G are in the same place for both strings, they have different characters in the other spaces. Since there are 2 such spaces that are different (the D and F in the first string), we return 2.

# Input: "ABCDEFG", "ABCDEFG",
# Output: 0

#============================================================================

# 7. Reverse Words

# Given a string of words, write a function that returns a new string that contains the words in reverse order.

# Input: “popcorn is so cool isn’t it yeah i thought so”
# Output: “so thought i yeah it isn’t cool so is popcorn”
