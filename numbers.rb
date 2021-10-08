# Numbers

# Fibonacci

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
