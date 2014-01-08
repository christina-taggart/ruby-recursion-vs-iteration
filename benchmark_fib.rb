require 'benchmark'

def fibonacci_iterative(n)
  fib = 0
  next_fib = 1
  n.times {
    prev_fib = fib
    fib = next_fib
    next_fib += prev_fib
  }
  fib
end

@fibs = [0, 1, 1]
def fibonacci_recursive(n)
  @fibs[n] ||= fibonacci_recursive(n-2) + fibonacci_recursive(n-1)
end

#-----BENCHMARKS-----

puts "Iterative: testing with n = 10000"
puts Benchmark.measure { fibonacci_iterative(10000) }
puts "----------"
puts "Recursive: testing with n = 10000"
puts Benchmark.measure { fibonacci_recursive(10000) }
puts "----------"

n = 10000
Benchmark.bm { |x|
  x.report("iterative:") { fibonacci_iterative(n) }
  x.report("recursive:") { fibonacci_recursive(n) }
}

n=10000
p Benchmark.realtime {
  fibonacci_iterative(n)
}

p Benchmark.realtime {
  fibonacci_recursive(n)
}