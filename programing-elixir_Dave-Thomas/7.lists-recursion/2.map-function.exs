# a named function that takes a list and a function
# returns a new list containing the result of applying that function to each element in the original list

defmodule MyList2 do
  def map([], _func), do: 0
  def map([ head | tail], func), do: [ func.(head) | map(tail, func) ]
end
