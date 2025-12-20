# function that returns a list of number from a rang (from..to)

defmodule MyList do
  def span(from..to//_step)
    when from == to,
    do: [to]

  def span(from..to//step), do: [ from | span((from + step)..to)]
end
