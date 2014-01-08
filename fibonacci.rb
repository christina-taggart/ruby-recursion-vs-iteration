require 'benchmark'

def fibonacci_iterative(n)
  first = 0
  second = 1
  n = n - 2
  if n == 0
    return first
  else
    while n > 0
      fib = first + second
      first = second
      second = fib
      n -= 1
    end
  end
  return fib
end

def fibonacci_recursive(n)
  if n < 2
    n
  else
    fibonacci_recursive(n-1) + fibonacci_recursive(n-2)
  end
end

puts Benchmark.measure{1000.times{fibonacci_iterative(10)}}
puts Benchmark.measure{1000.times{fibonacci_recursive(10)}}