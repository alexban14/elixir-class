cast = [
  %{
    character: "Buttercup",
    actor: %{
      first: "Robin",
      last: "Wright"
    },
    role: "princess"
  },
  %{
    character: "Westley",
    actor: %{
      first: "Cary",
      last: "Elwes"
    },
    role: "farm boy"
  }
]

# all & at ⇒ only works on lists
IO.inspect get_in(cast, [Access.all(), :character])

IO.inspect get_in(cast, [Access.at(1), :character])

IO.inspect get_and_update_in(
  cast,
  [Access.all(), :actor, :last],
  fn (val) -> { val, String.upcase(val) } end
)


cast = [
  %{
    character: "Buttercup",
    actor: { "Robin", "Wright" },
    role: "princess"
  },
  %{
    character: "Westley",
    actor: { "Cary", "Elwes" },
    role: "farm boy"
  }
]

# elem function works on tuples
IO.inspect get_in(cast, [Access.all(), :actor, Access.elem(1)])

IO.inspect get_and_update_in(
  cast,
  [Access.all(), :actor, Access.elem(1)],
  fn (val) -> { val, String.upcase(val) } end
)


cast = %{
  buttercup: %{
    actor: { "Robin", "Wright" },
    role: "princess"
  },
  westley: %{
    actor: { "Cary", "Elwes" },
    role: "farm boy"
  }
}
# at and at! work on dictionary types
IO.inspect get_in(cast, [Access.key(:westley), :role,])

IO.inspect get_and_update_in(
  cast,
  [Access.key(:buttercup), :role],
  fn (val) -> { val, "Queen" } end
)
