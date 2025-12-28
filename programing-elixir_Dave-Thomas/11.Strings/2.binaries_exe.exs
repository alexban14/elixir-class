defmodule BinariesExe do
  def center(word_list) do
    sorted = Enum.sort(word_list, &(String.length(&1) >= String.length(&2)))
    for word <- word_list do
      trailing = String.length(Enum.at(sorted, 0)) - String.length(word)
      new_length = String.length(word) + div(trailing, 2)
      IO.puts(String.pad_leading(word, new_length))
    end
  end
end

