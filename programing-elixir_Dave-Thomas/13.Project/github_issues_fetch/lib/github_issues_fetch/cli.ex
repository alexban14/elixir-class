defmodule Issues.CLI do
  import Sort
  import Export.TableFormatter

  @default_count 4

  @moduledoc """
  Handle the command line parsing and the dispatch to
  the various functions that end up generating a
  table of the last _n_ issues in a github project
  """

  def main(argv) do
    run(argv)
  end

  def run(argv) do
    argv
      |> parse_args
      |> process
  end

  @doc """
  `argv` can be -h or --help, which returns :help

  Otherwise it is a github user name, project name, and (optionally)
  the number of entries to format.

  Return a tuple of `{ user, project, count }`, or `:help` if help was given
  """
  def parse_args(argv) do
    parse = OptionParser.parse(
      argv,
      switches: [ help: :boolean ],
      aliases: [ h: :help ]
    )

    # BIG funciton refactored to use functional style
    # case parse do
    #   { [ help: true ], _, _ } -> :help
    #   { _, [ user, project, count ], _ } -> { user, project, String.to_integer(count) }
    #   { _, [ user, project ], _ } -> { user, project, @default_count }
    #   _ -> :help
    # end

    args_to_internal(parse)
  end

  def process(:help) do
    IO.puts """
    usage: issues <user> <project> [ count | #{@default_count}]
    """
  end

  def process({ user, project, count }) do
    Issues.GithubIssues.fetch(user, project)
    |> decode_response()
    |> descending_by_created_at()
    |> last(count)
    |> print_table_for_columns(["name", "created_at", "title"])
  end

  def decode_response({ :ok, body }), do: body

  def decode_response({ :error, error}) do
    IO.puts "Error fetching from Github: #{error["message"]}"
    System.halt(2)
  end

  def last(list, count) do
    list
    |> Enum.take(count)
    |> Enum.reverse
  end

  defp args_to_internal({ [ help: true ], _, _ }), do: :help

  defp args_to_internal({ _, [ user, project, count ], _ }), do: { user, project, String.to_integer(count) }

  defp args_to_internal({ _, [ user, project ], _ }), do: { user, project, @default_count }

  defp args_to_internal(_), do: :help
end
