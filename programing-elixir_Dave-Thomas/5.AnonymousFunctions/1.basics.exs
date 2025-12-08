# 1.

sum = fn (a,b) -> a + b end

# the dot indicates the function being called 
# arguments are passed in parenthesis
IO.puts sum.(1,2)


# 2

# parenthesis can be omitted in the function definition
multiply = fn a, b -> a * b end

IO.puts multiply.(2,3)

# 3
# Elixir performs pattern matching on the passed arguments to the function's parameters
# the same as we'd wrote { a, b } = { 1, 2 }

swap = fn { a, b } -> { b, a } end

{ a, b } = swap.( { 5, 6 } )

IO.puts a
IO.puts b
