def fibonacci_iterative(nth_fib)
  first_num = 0
  second_num = 1
  next_num = 1
  0.upto(nth_fib - 1) do
    first_num = second_num
    second_num = next_num
    next_num = first_num + second_num
  end
  return first_num
end

p fibonacci_iterative(6) == 8
p fibonacci_iterative(8) == 21


def fibonacci_recursive(nth_fib)
  if nth_fib == 1 || nth_fib == 2
    return 1
  else
    fibonacci_recursive(nth_fib - 1) + fibonacci_recursive(nth_fib - 2)
  end

end

p fibonacci_recursive(3) == 2
p fibonacci_recursive(9) == 34
p fibonacci_recursive(10) == 55

require 'benchmark'
puts Benchmark.measure { 1000.times{fibonacci_iterative(10)} }

puts Benchmark.measure { 1000.times{fibonacci_recursive(10)} }