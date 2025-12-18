defmodule MyLists do
  # using lists concatenation
  def flatten([]), do: []
  def flatten([ head | tail ]), do: flatten(head) ++ flatten(tail)
  def flatten(head), do: [head]


  # efficient: picks successive head values from a list
  # adding them to "result"
  # tail recursive
  # we have to unset the head if the head itself is a list
  def flatten_imp(list), do: _flatten_imp(list, [])

  defp _flatten_imp([], result), do: Enum.reverse(result)

  # these 2 functions deal with the head being a list
  defp _flatten_imp([ [ h | [] ] | tail ], result) do
    _flatten_imp([ h | tail ], result)
  end
  defp _flatten_imp([ [ h | t ] | tail ], result) do
    _flatten_imp([ h, t | tail ], result)
  end

  # otherwise the head is not a list and we collect it
  defp _flatten_imp([ head | tail ], result) do
    _flatten_imp(tail, [ head | result ])
  end
end
