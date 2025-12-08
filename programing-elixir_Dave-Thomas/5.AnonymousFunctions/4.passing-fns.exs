# 1 

times_2 = fn n -> n * 2 end

apply = fn (fun, value) -> fun.(value) end

IO.puts(apply.(times_2, 3))

# 2 

list = [1,2,3,4,5]

Enum.map(list, fn(el) -> el * 2 end)
Enum.map(list, fn(el) -> el * el end)
Enum.map(list, fn(el) -> el > 3 end)
