require 'benchmark'

def fibonacci_iterative(n)
  solution = [0,1]
  if n == 1
    p [0]
  else
    (n-2).times { solution << (solution[-1] + solution[-2]) }
    solution[-1]
  end
end


def fibonacci_recursive(n)
  if n <= 3
    return 1
  end
  fibonacci_recursive(n-1) + fibonacci_recursive(n-2)
end

def fib_r(a,b,n)
  return b if n <= 2
  fib_r(b, a+b, n-1)
end

def fib(n)
  fib_r(0,1,n)
end

puts Benchmark.measure {

fibonacci_iterative(10) * 1000

}

puts Benchmark.measure {

fibonacci_recursive(10) * 1000

}

puts Benchmark.measure {

fib(10) * 1000

}

# fibonacci_iterative(1)
# fibonacci_iterative(5)
# fibonacci_iterative(12)

# fibonacci_recursive(1)
# fibonacci_recursive(5)
# fibonacci_recursive(12)




# p fib(192)