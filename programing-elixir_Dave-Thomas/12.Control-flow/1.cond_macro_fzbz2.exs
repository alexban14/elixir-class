# FizzBuzz, children count up from 1. If the number is a multiple
# of three, they say “Fizz.” For multiples of five, they say “Buzz.” For multiples
# of both, they say “FizzBuzz.”

# FizzBuzz transforms a number into a string
# in Elixir we code things as transformations
defmodule FizzBuzz do
  def upto(n) when n > 0 do
    1..n |> Enum.map(&fizzbuzz/1)
  end

  defp fizzbuzz(n) do
    cond do
      rem(n, 3) == 0 and rem(n, 5) == 0 ->
        "FizzBuzz"
      rem(n, 3) == 0 ->
        "Fizz"
      rem(n, 5) == 0 ->
        "Buzz"
      true ->
        n
    end
  end
end

