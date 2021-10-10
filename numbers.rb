# 1. Primes

# Write a function that returns whether a given number is a prime number.

# Write a function that returns whether a given number is a prime number.

=begin
input is 1 or 4 or 6, etc => false
2, 3, 5, 7, 11, 13, 17, 19, etc => true

#prime -- the only two factors of the number are itself and 1


create a function
call the function
add params
return true or false

puts "Please enter a number. I will tell you if it is prime or not: "
number = gets.chomp

if no remainder / == 0 / return false, becuase its not prime
  
  index = 2

  increase until = the number/n/params
    n % index == 0
    index +=1

=end

def is_prime(n)
  index = 2

  if n < 2
    return false
  end

  while index < n
    if n % index == 0
      return false
    end
    index += 1
  end

  return true
end

p is_prime(3);  #true
p is_prime(7);  #true
p is_prime(11);  #true
p is_prime(24);  #false
p is_prime(33);  #false
p is_prime(100) #false

#============================================================================

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

#============================================================================

# 3. Fibonacci

# fib(N) = ??
# fib(8) = 13

def fib(n)
  x = 0
  y = 1
  z = x + y

  if n == 1
    return x
  end
  if n == 2
    return y
  end

  (n - 3).times do
    x = y
    y = z
    z = x + y
  end

  return z
end

p fib(8)

#============================================================================

# 4. Leap Year

# Given a year, report if it is a leap year.

# The tricky thing here is that a leap year in the Gregorian calendar occurs:

# on every year that is evenly divisible by 4
# except every year that is evenly divisible by 100
# unless the year is also evenly divisible by 400
# For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.

# If your language provides a method in the standard library that does this look-up, pretend it doesn't exist and implement it yourself.

=begin


if n % 4 == 0 && n % 100 == 0
  if n % 400 == 0
    return true
  end
  return false
end


if n % 4 == 0
  true

=end

def leap_year(n)
  if n % 4 == 0 && n % 100 == 0
    if n % 400 == 0
      return true
    end
    return false
  end

  if n % 4 == 0
    return true
  else
    return false
  end
end

p leap_year(1997);  #false
p leap_year(1996);  #true
p leap_year(1900);  #false
p leap_year(2000) #true

#note--1997 printed 'nil' originally (bc excluded return false from bottom loop), run through all edge cases when looping through code/debuggin step

#============================================================================

# 5. Multiples of 3 and 5

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

=begin
1000 => ??

i = 1
sum = 0
loop to 10
  if i % 3 == 0 || i % 5 == 0
    sum = index + sum
  end
  i++
end
=end

def multiples_and_sum
  i = 1
  sum = 0
  while i < 1000
    if i % 3 == 0 || i % 5 == 0
      sum = i + sum
    end
    i += 1
  end
  return sum
end

p multiples_and_sum #233168
