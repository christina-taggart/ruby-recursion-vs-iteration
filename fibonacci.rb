require 'benchmark'

def fibonacci_iterative(n)
	return 0 if n == 0
	return 1 if n == 1
	fib_seq = [0,1]
	(n-1).times do fib_seq << fib_seq[-2] + fib_seq[-1] end
	fib_seq.last
end

def fibonacci_recursive(n)
	return 0 if n == 0
	return 1 if n == 1
	fibonacci_recursive(n-1) + fibonacci_recursive(n-2)
end

x = 1000

puts Benchmark.measure {fibonacci_iterative(15)*x}
puts Benchmark.measure {fibonacci_recursive(15)*x}