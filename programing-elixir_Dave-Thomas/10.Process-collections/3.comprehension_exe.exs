# use span function from chapter 7 and lists comprehension
# to return a list of the prime numbers from 2 to n

# iex -r  ../7.lists-recursion/5.complex-patterns-ex.exs -r ./3.comprehension_exe.exs

defmodule PrimeNumbers do
  def get_up_to(n) do
    range = MyList.span(2..n)
    result = for a <- range, b <- range, a <= b, a * b <= n, do: a * b
    range -- result
  end
end


# charge sales tax on orders shipped to different states
# function that returns the keyword list with the total calculated

tax_rates = [ NC: 0.075, TX: 0.08 ]

orders = [
  [ id: 123, ship_to: :NC, net_amount: 100.00 ],
  [ id: 124, ship_to: :OK, net_amount: 35.50 ],
  [ id: 125, ship_to: :TX, net_amount: 24.00 ],
  [ id: 126, ship_to: :TX, net_amount: 44.80 ],
  [ id: 127, ship_to: :NC, net_amount: 25.00 ],
  [ id: 128, ship_to: :MA, net_amount: 10.00 ],
  [ id: 129, ship_to: :CA, net_amount: 102.00 ],
  [ id: 130, ship_to: :NC, net_amount: 50.00 ] 
]

defmodule OrderTaxRate do
  def calculate(tax_rates, orders) do
    for order <- orders, do: (
      ship_to = order[:ship_to]
      tax_rate = Keyword.get(tax_rates, ship_to, 0)
      order ++ [ total: order[:net_amount] + (order[:net_amount] * tax_rate)]
    )
  end
end

IO.inspect OrderTaxRate.calculate(tax_rates, orders)
