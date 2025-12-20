# converting a string into the octal representation
# of its characters

octal = for << << b1::size(2), b2::size(3), b3::size(3) >> <- "hello" >>, 
  do: "0#{b1}#{b2}#{b3}"

IO.inspect(octal)
