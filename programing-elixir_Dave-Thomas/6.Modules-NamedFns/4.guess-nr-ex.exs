# Guessing number game problem

defmodule GuessGame do
  def guess(actual, first..last//_) when is_integer(actual) and actual in first..last//1 do 
    check_guess(actual, first..last, split_num(first, last))
  end

  defp split_num(a, b), do: div((a + b), 2)

  defp print_guess(n), do: IO.puts "It is #{n}"

  defp check_guess(actual, _, guess) when actual == guess do
    print_guess(guess)
    guess
  end

  defp check_guess(actual, _first..last//_, guess) when actual > guess do 
    print_guess(guess)
    check_guess( actual, (guess + 1)..last, split_num(guess + 1, last) )
  end

  defp check_guess(actual, first.._last//_, guess) when actual < guess do
    print_guess(guess)
    check_guess( actual, first..(guess - 1), split_num(first, guess - 1) )
  end
end
