# 1

add_one = &(&1 + 1) # same as fn (n) -> n + 1

IO.puts(add_one.(44))


# 2

square = &(&1 * &1)

IO.puts(square.(2))


# 3

speak = &(IO.puts(&1))

speak.("Hello")


# 4

divrem = &{ div(&1, &2), rem(&1, &2) }

{ a, b } = divrem.(13, 5)

speak.(a)
speak.(b)


# 5
# second use of the function capture operator
# give it the name and arity (number of parameters) of an existing function
# returns an anonymous function that calls it

l = &length/1
IO.puts(l.([1,2,3,4,5,6]))


len = &Enum.count/1
IO.puts(len.([3,4,5,2,2]))


mi = &Kernel.min/2
IO.puts(mi.(234,213))

