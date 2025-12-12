# writing the list algorithm

defmodule MyList do
  def len([]), do: 0

  # pattern match for a non-empty list
  def len([ _head | tail]), do: 1 + len(tail)
  # steps:
  # len([11,12,13,14,15])
  # = 1 + len([12,13,14,15])
  # = 1 + 1 + len([13,14,15])
  # = 1 + 1 + 1 + len([14,15])
  # = 1 + 1 + 1 + 1 + len([15])
  # = 1 + 1 + 1 + 1 + 1 + len([])
  # = 1 + 1 + 1 + 1 + 1 + 0
  # = 5


  # build a list using head and tails
  # func that takes a list of numbers and returns a new list containing the square of each
  def square([]), do: 0
  def square([ head | tail ]), do: [ head * head | square(tail) ]

  # +1 to every element in the list
  def add_1([]), do: 0
  def add_1([ head | tail ]), do: [ head + 1 | add_1(tail) ]
end

# !!! Every list is terminated by an empty list
