# 2.Fizzbuzz

# Write a function that prints out every number from 1 to N, with the following exceptions:

# If the number is divisible by 3, print out "FIZZ".
# If the number is divisible by 5, print out "BUZZ".
# If the number is divisible by both 3 and 5, print out "FIZZBUZZ".

=begin
9 => FIZZ
5 => BUZZ
15 => FIZZBUZ
4 => 4

write a function, add params
call/print function

create index, += unil reaches N
while i < n
  if i % 3 && 5 == 0
    print fizzbuzz
  elsif i % 3 == 0
    print fizz
  elsif i % 5 == 0
    print buzz
  else
    print i
  end
  index++
end

=end

def fizzbuzz(n)
  i = 1
  while i <= n
    if i % 3 == 0 && i % 5 == 0
      puts "FIZZBUZZ"
    elsif i % 3 == 0
      puts "FIZZ"
    elsif i % 5 == 0
      puts "BUZZ"
    else
      puts i
    end
    i += 1
  end
end

fizzbuzz(15)
# will print:
#1
#2
#FIZZ
#4
#BUZZ
#FIZZ
#7
#8
#FIZZ
#BUZZ
#11
#FIZZ
#13
#14
#FIZZBUZZ
