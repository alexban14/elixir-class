defmodule MyListExes do
  # function that takes a list and a function
  # applies the function to each element of the list and sums the result
  def mapsum([], _func), do: 0

  def mapsum([ head | tail ], func), do: func.(head) + mapsum(tail, func)

  # function that returns the maximum value of a list 
  def max([x]), do: x

  def max([ head | tail]), do: Kernel.max(head, max(tail))

  # in Exs a single quoted string => a list of individual character codes
  # function that adds n to list element
  def caesar([], _n), do: []

  def caesar([ head | tail ], n)
    when head + n <= ?z,
    do: [head + n | caesar(tail, n) ]

  def caesar([ head | tail ], n),
    do: [head + n - 26 | caesar(tail, n) ]
end
