def fib_iterative(n)
	fib = []
	previous = 0
	current = 1
	if n > 0
		current.upto(n-1) do
		previous, current = current, current + previous
		fib.push (current)
		end
		p current
	else
		p 0
	end

end

###pseudo code
#until place is equal to n
#make the fib sequence
#once it hits n, print fib number



def fib_recursive(n)
	if n == 0
		0
	elsif n == 1
		1
	else
		fib_recursive(n -1) + fib_recursive(n - 2)
	end 

end

require 'benchmark'

puts Benchmark.measure{fib_iterative(10) * 100}

puts Benchmark.measure{fib_recursive(10) * 100}

puts Benchmark.measure{fib_iterative(20) * 100}

puts Benchmark.measure{fib_recursive(20) * 100}

puts Benchmark.measure{fib_iterative(30) * 100}

puts Benchmark.measure{fib_recursive(30) * 100}

puts Benchmark.measure{fib_iterative(40) * 100}

puts Benchmark.measure{fib_recursive(40) * 100}

