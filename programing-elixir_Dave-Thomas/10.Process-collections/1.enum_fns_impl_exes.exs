# Implement the following Enum functions using no library functions or list
# comprehensions: all?, each , filter, split, and take

defmodule MyEnum do
  def all?([], _to_apply), do: false
  def all?(list, to_apply), do: check_result(each(list, to_apply))

  def check_result([]), do: false
  def check_result([ head | tail ]) do
    if false in [ head | tail ] do
      false
    else
      true
    end
  end


  def each([], _to_apply), do: []
  def each([ head | tail ], to_apply), do: [ to_apply.(head) | each(tail, to_apply) ] 

  def filter([], _filter_to_apply), do: []
  def filter([ head | tail ], filter_to_apply) do
    if filter_to_apply.(head) do
      [ head | filter(tail, filter_to_apply) ]
    else
      [ filter(tail, filter_to_apply) ]
    end
  end

  def split(list, count), do: _split(list, [], count)
  defp _split([], front, _count), do: [Enum.reverse(front), []]
  defp _split(tail, front, 0), do: [Enum.reverse(front), tail]
  defp _split([ head | tail ], front, count) do
    _split(tail, [ head | front ], count-1)
  end

  def take(list, n), do: hd(split(list, n))
end
