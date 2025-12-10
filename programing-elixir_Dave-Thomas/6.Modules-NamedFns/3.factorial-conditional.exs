# not the same as "Guard Clauses"

defmodule FactorialConditional do
  def of(0), do: 1
  def of(n) do 
    if n < 0 do
      raise "factorial called on a negative number"
    else
      n * of(n - 1)
    end
  end
end
