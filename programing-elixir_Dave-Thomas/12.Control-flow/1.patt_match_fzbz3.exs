# FizzBuzz, children count up from 1. If the number is a multiple
# of three, they say “Fizz.” For multiples of five, they say “Buzz.” For multiples
# of both, they say “FizzBuzz.”

# most of the time is better not to use cond
# Elixir programs heavily relay on pattern matching instead
defmodule FizzBuzz do
  def upto(n) when n > 0 do
    1..n |> Enum.map(&fizzbuzz/1)
  end

  defp fizzbuzz(n), do: _fizzbuzz(n, rem(n, 3), rem(n, 5))

  defp _fizzbuzz(_, 0, 0), do: "FizzBuzz"
  defp _fizzbuzz(_, 0, _), do: "Fizz"
  defp _fizzbuzz(n, _, _), do: n
end

