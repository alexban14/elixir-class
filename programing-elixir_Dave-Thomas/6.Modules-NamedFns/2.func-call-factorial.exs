# the factorial of n, written n!, 
# is the product of all numbers 1 to 0
# 0! is defined to be 1

# specification of the concept of factorial
# which also happens to be close to an Elixir implementation
# - facotrial(0) -> 1
# - factorial (n) -> n * factorial(n - 1)

defmodule Factorial do
  def of(0), do: 1
  def of(n), do: n * of(n - 1)
end
