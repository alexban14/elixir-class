File.open!("/home/alex/Work/scaleUpSolutions/elixir-class/programing-elixir_Dave-Thomas/10.Process-collections/1.deal_cards.exs")
  |> IO.stream(:line) # converts an IO device into a stream that servers one line at a time
  |> Enum.max_by(&String.length/1)
  |> IO.inspect()

# alternatively (
#  - slower
#  + no intermediate storage
File.stream!("/home/alex/Work/scaleUpSolutions/elixir-class/programing-elixir_Dave-Thomas/10.Process-collections/1.deal_cards.exs")
  |> Enum.max_by(&String.length/1)
  |> IO.inspect()
