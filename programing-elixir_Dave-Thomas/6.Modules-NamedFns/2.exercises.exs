defmodule ExModTwo do
# 1. Function sum(n) that uses recursion to calculate the sum of the integers from 1 to n
  def sum(1), do: 1
  def sum(n), do: n + sum(n - 1)


# 2. Function gcd(x,y) that finds the greatest common divisor
# between 2 non-negative numbers
# Algebraically: 
#               gcd(x,y) is x if y == o
#               gcd(x,y) rem(x,y)
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x,y))
end

