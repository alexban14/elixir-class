defmodule BinariesCap do
  # capitalize the sentences in a string
  def capitalize_sentences(string) do
    string
      |> String.split(". ")
      |> Enum.map(&(String.capitalize(&1)))
      |> Enum.join(". ")
  end
end

