defmodule Issues.GithubIssues do
  require Logger
  @github_url Application.compile_env(:github_issues_fetch, :github_url)
  @user_agent [ {"User-agent", "alexban14 alexbanut10@gmail.com"} ]

  def fetch(user, project) do
    Logger.info("Fetching #{user}'s project #{project}")

    issues_url(user, project)
      |> HTTPoison.get(@user_agent)
      |> handle_response
  end

  def issues_url(user, project) do
    "#{@github_url}/repos/#{user}/#{project}/issues"
  end

  def handle_response({ :ok, %{ status_code: status_code, body: body } }) do
    Logger.info("Got response status code=#{status_code}")
    {
      status_code |> check_for_error(),
      body        |> Poison.Parser.parse!(),
    }
  end

  defp check_for_error(200), do: :ok
  defp check_for_error(_), do: :error
end
