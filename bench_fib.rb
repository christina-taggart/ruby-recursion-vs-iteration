def benchmark
  start_time = Time.now
  yield
  end_time = Time.now
  running_time = start_time - end_time
  puts "#{running_time} seconds"
end

def fib_tail(num1, num2, fib_index)
	if fib_index == 1
	  num2
	elsif fib_index == 2
	  num1
	else
	  fib_tail(num1 + num2, num1, fib_index-1)
	end
end

def fibonacci_recursive(n)
	fib_tail(1,1,n)
end

def fibonacci_iterative(n)
	start = [0,1]
	(n-1).times { start << start[-1] + start[-2] }
	start.last
end


benchmark { 1000.times {fibonacci_recursive(10)} }
benchmark { 1000.times {fibonacci_iterative(10)} }

puts

benchmark { 1000.times {fibonacci_recursive(16)} }
benchmark { 1000.times {fibonacci_iterative(16)} }

puts

benchmark { 1000.times {fibonacci_recursive(25)} }
benchmark { 1000.times {fibonacci_iterative(25)} }

