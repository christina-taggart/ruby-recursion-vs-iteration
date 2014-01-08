require 'benchmark'

def fibonacci_iterative(number)
  if number > 0
    previous = 0
    current = 1
    (number - 1).times do
    previous, current = current, current + previous
    end
    current
  else
    0
  end
end

def fibonacci_recursive(number, previous = 0, current = 1)
  number > 0 ? fibonacci_recursive(number-1, current, current + previous) : current
end

Benchmark.bm do |test|
  test.report("Iterative: ") { 1000000.times{fibonacci_iterative(10)} }
  test.report("Recursive: ") { 1000000.times{fibonacci_recursive(10)} }
end