require 'benchmark'

def fibonacci_iterative(n)
  if n == 1 or n == 2
    return 1
  end

  a = 1
  b = 1
  counter = 2
  fib = 1

  while counter < n
    fib = a + b
    counter += 1
    if counter < n
      a = b
      b = fib
    end
  end
  return fib
end

@arr_fib = [0,1,1]
def fibonacci_recursive(n)

 @arr_fib[n] ||= fibonacci_recursive(n-1) + fibonacci_recursive(n-2)

end


p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(6) == 8
p fibonacci_iterative(29) == 514229
n = 1000
Benchmark.bm(7) do |x|
  x.report("fibonacci_iterative: ") do
    n.times{fibonacci_iterative(10)}
  end
end

p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(6) == 8
p fibonacci_recursive(29) == 514229
n = 1000
Benchmark.bm(7) do |x|
  x.report("fibonacci_recursive: ") do
    n.times{fibonacci_recursive(10)}
  end
end