# 1

handle_open = fn
  { :ok, file } -> "Read data: #{IO.read(file, :line)}" # File, refers to the Elixir's built in module
  { _, error } -> "Read data: #{:file.format_error(error)}" # :file, refers to the underlying Erlang File module
end

IO.puts handle_open.(File.open("./baisc-exercises.exs")) #file existis
IO.puts handle_open.(File.open("./nonexistent"))
