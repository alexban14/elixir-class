# 1. function that takes 3 arguments 
# first 2 arguments == 0 ? "FizzBuzz"
# first argument == 0  ? return "Buzz"
# otherwise return the 3th argument

fizzbuzz = fn 
  (0, 0, _c) -> "FizzBuzz"
  (0, _a, _c) -> "Buzz"
  (_a, _b, c) -> c
end

# IO.puts fizzbuzz.(0,0,1)
# IO.puts fizzbuzz.(0,1,2)
# IO.puts fizzbuzz.(1,2,3)

# 2. function that takes a single integer (n)
# calls the function from ex.1  passing it:
# rem(n, 3), rem(n,5), and n
# call the function seven times starting from 10, 11, 12...
# result must be "Buzz, 11, Fizz, 13, 14, FizzBuzz, 16"

main = fn (n) -> fizzbuzz.(rem(n, 3), rem(n, 5), n) end

 IO.puts main.(10)
 IO.puts main.(11)
 IO.puts main.(12)
 IO.puts main.(13)
 IO.puts main.(14)
 IO.puts main.(15)
 IO.puts main.(16)

