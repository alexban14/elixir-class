defmodule MatchVarKeys do
  @data %{ name: "Dave", state: "TX", likes: "Elixir" }

  def get_data, do: @data

  def match(data) do
    for key <- [ :name, :likes ] do
      %{ ^key => value } = data
      value
    end
  end
end

