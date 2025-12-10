defmodule Outer do
	defmodule Inner do
		def inner_func do
			# ...
		end
	end

	def outer_func do
		Inner.inner_func
	end
end

Outer.outer_func
Outer.Inner.inner_func

# can be also defined like:
defmodule Mix.Tasks.Doctest do
  def run do
    # ...
  end
end
