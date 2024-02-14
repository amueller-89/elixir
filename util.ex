defmodule stuff do
	def total_cost(price, taxRate) do
		price * (taxRate+1)
	end
end