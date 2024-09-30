defmodule Checkout do
    def total_cost(price, tax_rate) do
    price * (tax_rate + 1)
    end
end

Checkout.total_cost(20, 1)
