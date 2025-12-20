min_maxes = [ { 1, 4 }, { 2, 3 } , { 10, 15 } ]

for { min, max } <- min_maxes, n <- min..max, do: IO.puts(n)



# a filter ⇒ a predicate, acts as a gatekeeper for the comprehension
first8 = [1,2,3,4,5,6,7,8]

for x <- first8,
    y <- first8,
    x >= y,
    rem(x*y, 10) == 0, 
    do: IO.inspect({ x, y })


# the first term in a generator is pattern ⇒ we can use it to deconstruct structured data
reports = [ dallas: :hot, minneapolis: :cold, dc: :muggy, la: :smoggy ]

for { city, weather } <- reports, do: IO.inspect({ city, weather })
