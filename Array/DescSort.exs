defmodule Practice.Array.Descsort do
  def sort_array_desc(arr) do
    Enum.sort(arr, &(&2 >= &1))
  end
end

array = [ 9, 5, 12, 7, 3]
sorted_desc = Practice.Array.Descsort.sort_array_desc(array)
IO.puts("Array sorted in descending order: #{sorted_desc}")
