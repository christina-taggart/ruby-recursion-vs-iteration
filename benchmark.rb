require 'benchmark'
def fibonacci_iterative(n)
  fib = [0, 1]
  fib[fib.length] = fib[fib.length-1] + fib[fib.length-2] until fib[n] != nil
  fib[n]
end

def fibonacci_recursive(n, fib=[0,1])
  fib[fib.length] = fib[fib.length-1] + fib[fib.length-2]
  return fib[n] if fib[n] != nil
  fibonacci_recursive(n, fib)
end

# Driver Code
puts Benchmark.measure { 1000.times{ fibonacci_iterative(10) } }
puts Benchmark.measure { 1000.times{ fibonacci_recursive(10) } }

puts Benchmark.measure { 1000.times{ fibonacci_iterative(100) } }
puts Benchmark.measure { 1000.times{ fibonacci_recursive(100) } }

# Around here, iterative starts pulling ahead (finishing faster)
puts Benchmark.measure { 1000.times{ fibonacci_iterative(1000) } }
puts Benchmark.measure { 1000.times{ fibonacci_recursive(1000) } }