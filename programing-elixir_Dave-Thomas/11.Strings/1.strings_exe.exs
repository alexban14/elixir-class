defmodule StringsExe do
  # 1. Returns true if character-list only contains printable ascii characters
  def printable_ascii(char_list), do: Enum.all?(char_list, fn ch -> ch in ?\s..?~ end)

  # 2. Returns true if parameters are anagrams
  def anagram?(word1, word2), do: word1 == Enum.reverse(word2)
end

# 3. Why does Elixir print 'cat' as string but 'dog' as individual numbers
IO.inspect [ ~c"cat" | ~c"dog" ]
# output: [~c"cat", 100, 111, 103]

# A: Because the head is actually a list [?c, ?a, ?t]
#     meaning the overall list consists of a list and three ASCII characters
#     [ ~c"cat", ~c"dog" ] = [[ ?c, ?a, ?t ] | ?d, ?o, ?g ]
