defmodule Example do
  @author "Dave Thomas"
  def get_author do
    @author
  end

  # an attribute can be set multiple times in module
  @author "Alex"
  def get_second_author do
    @author
  end
end

IO.puts "Example was written by #{Example.get_author}"
IO.puts "Example was rewritten by #{Example.get_second_author}"
