defmodule CliTest do
  use ExUnit.Case
  doctest GithubIssuesFetch

  import Issues.CLI, only: [ parse_args: 1 ]

  test ":help returned by option parsing with -h and --help options" do
    assert parse_args(["-h", "anything"]) == :help
    assert parse_args(["--help", "anything"]) == :help
  end

  test "three values returned if three given" do
    assert parse_args(["user", "project", "7"]) == { "user", "project", 7 }
  end

  test "count is defaulted when two values given" do
    assert parse_args(["user", "project"]) == { "user", "project", 4 }
  end

  test "sort descending orders the correct way" do
    result = Sort.descending_by_created_at(fake_created_at(["c", "a", "b"]))
    issues = for issue <- result, do: Map.get(issue, "created_at")
    assert issues == ~w{ c b a }
  end

  defp fake_created_at(values) do
    for value <- values do
      %{ "created_at" => value, "other_data" => "xyz" }
    end
  end

end
