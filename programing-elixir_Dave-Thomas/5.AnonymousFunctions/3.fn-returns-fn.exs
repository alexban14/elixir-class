# 1.

func1 = fn -> 
            fn ->
                "Hello"
            end
        end


# IO.puts func1.()
# Function<12.17052888 in :erl_eval.expr/5>

# something like this is something we normally would write
IO.puts func1.().()

# instead we might do
other = func1.()

IO.puts other.()


# 2.
greeter = fn name -> 
              fn -> "Hello #{name}!" end
          end

daveGreeter = greeter.("Dave")
alexGreeter = greeter.("Alex")

IO.puts daveGreeter.()
IO.puts alexGreeter.()

# 3.
add_n = fn n -> 
            fn other -> n + other end
        end

add_two = add_n.(2)
add_five = add_n.(5)

IO.puts add_two.(3)
IO.puts add_five.(7)
