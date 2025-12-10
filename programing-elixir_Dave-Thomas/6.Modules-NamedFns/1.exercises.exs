# 1 Times module with triple function that multiples the parameter with 3
# 2 compile the file using both options
# 3 quadruple function that calls the "double" function

defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n), do: double(double(n))
end
