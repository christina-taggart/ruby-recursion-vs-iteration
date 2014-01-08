require 'benchmark'

def fib_iterative(n)
  fib_num = [0,1]
  first = 0
  second = 1
  counter = 1
  while counter < n
    fib = first + second
    fib_num << fib
    first = second
    second = fib
    counter += 1
  end
  return fib_num[-1]


end

def fibonacci_recursive(n, high_number = 1, low_number = 0, counter = 0)
  return low_number if n == counter
  new_high_number = low_number + high_number
  new_low_number = high_number
  counter += 1
  fibonacci_recursive(n, new_high_number, new_low_number, counter)
end

time = Benchmark.realtime do
  fib_iterative(1000) * 1000
end
puts "Fib Iterative took #{time} seconds"

time = Benchmark.realtime do
  fibonacci_recursive(1000) * 1000
end
puts "Fib Recursive took #{time} seconds"



#puts Benchmark.measure { fib_iterative(1000)} * 1000


#first = 0
#second = 1
#fib_num = first+second
#first = second
#second = third
#fib_num = first+second
#keep doing until second < passed in number