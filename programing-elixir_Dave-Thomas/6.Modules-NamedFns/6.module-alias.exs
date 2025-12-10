
defmodule Example do
  def compile_and_go(source) do
    alias My.Other.Module.Parser, as: Parser
    alias My.Other.Module.Runner, as: Runner
    source
    |> Parser.parse()
    |> Runner.execute()
  end
end

# we could also be doing
alias My.Other.Module.Parser.Parser
alias My.Other.Module.Parser.Runner

# or
alias My.Other.Module.Parser{Parser, Runner}
