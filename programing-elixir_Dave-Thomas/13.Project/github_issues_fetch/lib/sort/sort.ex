defmodule Sort do
  def descending_by_created_at(list) do
    list
    |> Enum.sort(fn i1, i2 -> i1["created_at"] >= i2["created_at"] end)
  end
end
