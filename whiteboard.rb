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
