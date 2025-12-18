list = ["now", "is", "the", "time"]

longer = fn (word, longest) ->
  if String.length(word) > String.length(longest) do
    word
  else
    longest
  end
end

IO.inspect Enum.reduce(list, longer)

