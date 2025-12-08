# function named "prefix" that takes a string
# returns a new function that takes a string
# that will return the 2 parameters concatenated with a white space

prefix = fn pre ->
  fn name -> "#{pre} #{name}" end
end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")
