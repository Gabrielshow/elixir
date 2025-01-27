defmodule Practice.Array.SecondLargest do
  def second_largest_element(arr) do
    sorted = arr
    |> Enum.uniq()
    |> Enum.sort()
    second_largest = Enum.at(sorted, -2)
    second_largest
  end
end

array = [ 9, 5, 12, 7, 3]
second_largest = Practice.Array.SecondLargest.second_largest_element(array)
IO.puts("Second largest element in the array: #{second_largest}")
