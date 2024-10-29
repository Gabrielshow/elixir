defmodule Practice.Checkout do
    def total_cost(price, tax_rate) do
    price * (tax_rate + 1)
    end
end

Practice.Checkout.total_cost(100, 0.2)
