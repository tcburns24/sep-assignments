def fib(n)
  if n <= 1
    return n
  else
    return fib(n-1) + fib(n-2)
  end
end


#puts fib(0)
#puts fib(1)
#puts fib(2)
#puts fib(3)
#puts fib(4)
#puts fib(5)
#puts fib(6)
#puts fib(7)
#puts fib(8)
#puts fib(9)

start = Time.now
puts fib(20)
finish = Time.now
diff = finish - start
puts diff


# iterative = 0.00095