defmodule Stuff do
	def total_cost(price, taxRate) do
		price * (taxRate+1)
	end

	def travel_info(distance, time) do
		info = "travelled " <> Integer.to_string(distance) <> " in " <> Integer.to_string(time)
		info = info <> " ,so " <>Float.to_string(velocity(distance, time))
		info
	end
		
	def velocity(distance, time) do
		distance/time
	end

	def boxes_needed(number) do
		%{big: big_boxes(number), medium: medium_boxes(number)}
	end

	def big_boxes(number) do
		div(number,big())
	end

	def big do
		50
	end

	def medium_boxes(number) do
		number = rem(number, big())
		IO.puts number
		div(number, medium())
	end
	def medium do
		20
	end
		
end