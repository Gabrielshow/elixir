defmodule Practice.Array.Unique do
  def remove_duplicates(arr) do
    Enum.uniq(arr)
  end
end

array = [1, 2, 2, 3, 4, 4, 5 , 5, 5]
unique_array = Practice.Array.Unique.remove_duplicates(array)
IO.inspect(unique.array)
