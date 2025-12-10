# 1.

defmodule DefParamEx do
  def func(p1, p2 \\ 2, p3 \\ 3, p4 \\ 4) do
    IO.inspect [p1, p2, p3, p4]
  end
end

# 2.

