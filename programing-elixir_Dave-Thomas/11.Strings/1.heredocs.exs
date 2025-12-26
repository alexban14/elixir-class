IO.puts "start"
# multi-line strings retain the leading and trailing newlines
IO. write "
  my
  string
"
IO.puts "end \n"


IO.puts "start"
# heredocs syntax fixes leading and trailing newlines
IO. write """
    my
    string
    """
IO.puts "end"
