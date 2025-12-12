# Find the library functions to do the following, and then use each in IEx.
# (If the word Elixir or Erlang appears at the end of the challenge, then you’ll
# find the answer in that set of libraries.)

# – Convert a float to a string with two decimal digits. (Erlang)
IO.puts :io.format("~.2f~n", [2.0/3.0])

# – Get the value of an operating-system environment variable. (Elixir)
IO.puts System.get_env("NAME")

# – Return the extension component of a file name (so return .exs if given
# "dave/test.exs"). (Elixir)
IO.puts Path.extname("./1.times.exs")

# – Return the process’s current working directory. (Elixir)
{ :ok, cwd_path } = File.cwd()
IO.puts cwd_path

# – Convert a string containing JSON into Elixir data structures. (Just
# find; don’t install.)
{ :ok, decoded } = JSON.decode("[null,123,\"string\",{\"key\":\"value\"}]")
IO.puts decoded



# – Execute a command in your operating system’s shell.
{ output, _ } = System.cmd("ls", ["-lh"])
IO.puts output
