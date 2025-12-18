import Enum

deck = for rank <- ~c"23456789TJQKA", suit <- ~c"CDHS", do: [suit, rank]

IO.inspect deck

IO.inspect deck |> shuffle |> take(13)

IO.inspect deck |> shuffle |> chunk_every(13)
