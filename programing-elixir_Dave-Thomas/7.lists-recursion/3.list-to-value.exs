# general purpose function that reduces a collection to a single value
# i.e. the product of the elements, a string containing the concatenation of elements, etc
# we need to pass:
#   - a collection
#   - some initial value
#   - a function that takes the current value of the reduction along with the next element of the collection
#     that returns the next value of the reduction
#
# reduce(collection, initial_value, func)
#
# recursive design:
#   - reduce([], value, _func) -> value
#   - reduce([ head | tail ], value, func) -> reduce(tail, func(head, value), func)
#
#   => applies the "func" to the list's head and the current value, 
#      passes the result as the new current value when reducing the list's tail

defmodule MyList3 do
  def reduce([], value, _func), do: value
  def reduce([head | tail], value, func), do: reduce(tail, func.(head, value), func)
end
