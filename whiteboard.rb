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
