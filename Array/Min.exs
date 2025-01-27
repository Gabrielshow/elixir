defmodule Practice.Array.Min do
  def min_element(arr) do
    Enum.min(arr)
  end
end

array = [8, 5, 12, 4 3]
min = Practice.Array.Min.min_element(array)
IO.puts("smallest elemetn in the array: #{min}")
