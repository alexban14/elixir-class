# takes an enumerable and returns an infinite stream

Stream.cycle(~w{ green white })
  |> Stream.zip(1..5)
  |> Enum.map(fn { class, value } ->
          "<tr class='#{class}><td>#{value}</td></tr>\n" end)
  |> IO.puts
