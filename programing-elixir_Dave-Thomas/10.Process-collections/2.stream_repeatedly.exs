# takes a function and invokes it each time a new value is wanted

Stream.repeatedly(&:random.uniform/0)
  |> Enum.take(3)
  |> IO.inspect
