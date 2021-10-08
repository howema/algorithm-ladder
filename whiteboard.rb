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
