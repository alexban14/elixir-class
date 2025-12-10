
range = 1..10

map_n_filter = fn (range) -> range |> Enum.map(&(&1 * &1)) |> Enum.filter(&(&1 < 40)) end

IO.puts map_n_filter.(range)
