# Functions-1

list_concat = fn ([a, b], [c, d]) -> [a, b, c, d] end

sum = fn (a, b, c) -> a + b + c end

pair_tuple_to_list = fn ( { a, b } ) -> [a, b] end


[:a, :b, :c, :d] =  list_concat.([:a, :b], [:c, :d])
IO.puts :a
IO.puts :b
IO.puts :c
IO.puts :d

IO.puts sum.(2,3,4)

[a, b] = pair_tuple_to_list.( { 7, 8 } )

IO.puts a
IO.puts b
